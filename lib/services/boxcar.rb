module Service
  module Boxcar
    def self.perform(params)
      Rails.logger.debug "Boxcar: Processing Push-Notification"
      require 'Socket'
      url = "http://"+Socket.gethostname+"/issue/"+params[:issue].id.to_s
      provider = BoxcarAPI::Provider.new('VoJ8AtKGv9zY4EusovuG', 'CHOqonGBQo19gYBZ1mVhVDMUA6ERbUnfX9RhzwN8')
      response = provider.notify("me@stei.gr",params[:issue].title, :source_url => url)
      Rails.logger.info "BoxCar notification sent."
      Rails.logger.debug "Boxcar Request issue:" + params[:issue]
      Rails.logger.debug "Boxcar Response HTTP-Status:" + response.header["status"]
    end
  end

  services[:boxcar] = Boxcar
end
