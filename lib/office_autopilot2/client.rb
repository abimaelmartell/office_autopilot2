require 'builder'
require 'nokogiri'
module OfficeAutopilot2
  class Client
    include OfficeAutopilot2::Client::Contacts

    def initialize
      raise ArgumentError, "Missing required parameter: app_id" if OfficeAutopilot2.app_id.nil?
      raise ArgumentError, "Missing required parameter: api_key" if OfficeAutopilot2.api_key.nil?
    end

    def auth
      { 'Appid' => OfficeAutopilot2.app_id, 'Key' => OfficeAutopilot2.api_key }
    end

    def request(method, path, options)
      options[:body].merge!(auth)
      handle_response( OfficeAutopilot2::Request.send(method, path, options) )
    end

    def handle_response(response)
      xml = Nokogiri::XML(response)

      if xml.at_css('result').content =~ /failure/i
        raise OfficeAutopilot2::XmlError if xml.at_css('result error').content =~ /Invalid XML/i
      end

      response
    end

  end
end
