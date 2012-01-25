class AlertingJob < Struct.new(:rotation_membership_id, :issue_id)
  def perform
    rotation_membership = RotationMembership.find(rotation_membership_id)
    user = rotation_membership.user
    issue = Issue.find(issue_id)

    # Issue was escalated in the meantime, drop this job silently.
    return if issue.assignee != user

    delay = (Time.now - issue.posted_at) / 60
    steps = rotation_membership.alerting_steps.ordered.all
    current_step = steps.reverse.find { |step| step.delay_minutes <= delay }
    # TODO(hermannloose): Validate that there is always a first step.
    unless current_step
      raise RuntimeError, "No currently active alerting step."
    end
    upcoming = steps.find { |step| step.delay_minutes > delay }

    check_after = upcoming ? upcoming.delay_minutes - delay : nil
    if check_after
      Rails.logger.info "Scheduling new alert for #{check_after.minutes.from_now}."

      Delayed::Job.enqueue(AlertingJob.new(rotation_membership_id, issue_id), {
        :priority => 0,
        :run_at => check_after.minutes.from_now
      })
    end

    contact = current_step.contact_detail
    details = {
      :user => user,
      :issue => issue
    }
    contact.contact_detail_properties.each do |property|
      details[property.key.to_sym] = property.value
    end

    Service.invoke(contact.category.to_sym, details)
  end

  def error(job, exception)
    case exception
    when ArgumentError
      Rails.logger.warn "##{job.id} #{job.name}: caught ArgumentError, will not retry."
      # Do not attempt to run again.
      job.fail!
    end
  end
end