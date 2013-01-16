module ApplicationHelper
  def twitterized_type(type)
    case type
      when :alert
        "alert-block"
      when :error
        "alert-error"
      when :notice
        "alert-info"
      when :success
        "alert-success"
      else
        type.to_s
    end
  end
  def active_navigation(given_controller)
    "active" if current_page?(url_for(:controller => given_controller))
  end
end