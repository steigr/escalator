require 'services/email'

module Service
  # List your services here.
  @services = {
    :email => Service::Email
  }

  def Service.invoke(key, params)
    if @services[key]
      @services[key].perform(params)
    else
      raise ArgumentError, "Unknown service key #{key.inspect}."
    end
  end
end