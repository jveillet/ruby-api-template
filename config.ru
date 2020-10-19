# frozen_string_literal: true

require 'rack'

require_relative 'config/environment'

##
# CORS configuration
#
use Rack::Cors do
  allow do
    origins '*'
    resource '/api/v1/*',
             headers: :any,
             methods: %i[get post delete put patch options head]
  end
end

# GZIP/compression support
use Rack::Deflater
# Requests logging middleware
use Middlewares::Logging

# Compile the API routes
API::APIv1.compile!

# Run the Rack app
run API::APIv1
