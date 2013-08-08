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
  end
end
