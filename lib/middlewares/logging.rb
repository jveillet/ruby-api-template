# frozen_string_literal: true

module Middlewares
  ##
  # Rack Middleware to log API calls to STDOUT
  #
  class Logging
    def initialize(app)
      @app = app
      @logger = Logger.new($stdout)
    end

    def call(env)
      start_time = Time.now
      status, headers, body = @app.call(env)
      end_time = Time.now
      request_time = request_time_in_ms(start_time, end_time)

      @logger.info(
        "request_id=#{request_id} path=#{env['PATH_INFO']} method=#{env['REQUEST_METHOD']} "\
        "host=#{env['HTTP_HOST']} params=#{env['QUERY_STRING']} "\
        "user_agent=#{env['HTTP_USER_AGENT']} remote_address=#{env['REMOTE_ADDR']} "\
        "request_time=#{request_time}ms status=#{status} message=#{body} "\
        "env=#{rack_env(env)}"
      )

      [status, headers, body]
    end

    private

    def request_id
      SecureRandom.uuid
    end

    def request_time_in_ms(start_time, end_time)
      ((end_time - start_time) * 1000).round(2)
    end

    def rack_env(env)
      return '' unless env.key?('puma.config')
      return '' unless env['puma.config']&.options

      env['puma.config'].options[:environment]
    end
  end
end
