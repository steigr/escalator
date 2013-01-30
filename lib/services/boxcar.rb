module Service
  module Boxcar
    def self.perform(params)
      Rails.logger.debug "Boxcar: Processing Push-Notification"
      provider = BoxcarAPI::Provider.new('VoJ8AtKGv9zY4EusovuG', 'CHOqonGBQo19gYBZ1mVhVDMUA6ERbUnfX9RhzwN8')
      response = provider.notify("me@stei.gr",'bctest-from-escalator')
#      Rails.logger.info "BoxCar notification sent."
#      Rails.logger.debug "Boxcar Request mail:" + params[:boxcar]
#      Rails.logger.debug "Boxcar Request issue:" + params[:issue]
#      Rails.logger.debug "Boxcar Response HTTP-Status:" + response.header["status"]
#      RestClient.post(
#          "https://android.apis.google.com/c2dm/send",
#          {
#            "registration_id" => params[:registration_id],
#            "collapse_key" => "none",
#            "data.issue" => params[:issue].to_json
#          },
#          {
#            "Authorization" => "GoogleLogin auth=" + GoogleClientLoginCredentials.first.token
#          }) do |response, request, result|
#
#        case response.code
#        when 200
#          matched = /Error=(.*)$/.match(response.body)
#          if matched
#            raise RuntimeError, "C2DM request failed: " + matched[1]
#          end
#          Rails.logger.info "Android C2DM notification successfully sent."
#          Rails.logger.debug "C2DM Request: " + request.inspect
#          Rails.logger.debug "C2DM Response: " + response.inspect
#        when 401
#          raise RuntimeError, "C2DM request failed, got 401."
#        else
#          raise RuntimeError, "C2DM request failed: " + response.inspect
#        end
#      end
    end
  end

  services[:boxcar] = Boxcar
end
