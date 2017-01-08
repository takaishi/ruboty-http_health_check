module Ruboty
  module Handlers
    class HttpListener < Base
      env :PORT, 'Listen port(default=3000)', optional: true

      def initialize(robot)
        super
        start
      end

      def start
        server = WEBrick::HTTPServer.new({ Port: port, Logger: Ruboty.logger })

        server.mount_proc('/') do |req, res|
          res.body = "OK"
        end

        Thread.new do
          server.start
        end
      end

      def port
        ENV['PORT'] || '3000'
      end
    end
  end
end
