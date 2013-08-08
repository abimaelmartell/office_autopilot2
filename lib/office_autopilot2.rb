require 'office_autopilot2/client/contacts'
require 'office_autopilot2/client'
require 'office_autopilot2/configurable'
require 'office_autopilot2/error'
require 'office_autopilot2/request'

module OfficeAutopilot2
  class << self
    include OfficeAutopilot2::Configurable

    def client
      @client ||= OfficeAutopilot2::Client.new
    end

    def method_missing method_name, *args, &block
      return super unless respond_to_missing?(method_name)
      client.send(method_name, *args, &block)
    end

    def respond_to_missing? method_name, include_private=false
      client.respond_to?(method_name, include_private)
    end
  end
end
