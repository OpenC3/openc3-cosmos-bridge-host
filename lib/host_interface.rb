require 'openc3/interfaces/interface'
require 'open3'

module OpenC3
  # Allows ANY command to be executed on the host OS and returns the result.
  # This is fundamentally insecure and dangerous! Only install on trusted hosts!
  class HostInterface < Interface
    def initialize
      super
      @results = []
    end

    def connect
      super
      @results = []
    end

    def connected?
      true
    end

    def read_interface
      begin
        data = @results.shift
        if data.nil? or data.length <= 0
          raise
        end
      rescue
        sleep 0.5
        retry
      end
      read_interface_base(data)
      data
    end

    def write_interface(data)
      write_interface_base(data)
      hash = JSON.parse(data)
      output, status = Open3.capture2e(hash['command'])
      @results << { id: 1, status: status, output: output.strip }.to_json
    end
  end
end
