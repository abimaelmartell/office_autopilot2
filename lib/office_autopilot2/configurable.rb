module OfficeAutopilot2
  module Configurable
    attr_accessor :api_key, :app_id

    def configure
      yield self
    end
  end
end
