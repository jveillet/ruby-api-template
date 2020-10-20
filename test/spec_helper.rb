# frozen_string_literal: true

# Setup our test environment
ENV['RACK_ENV'] = 'test’'

require 'minitest/autorun'
require 'rack'
require 'rack/test'

OUTER_APP = Rack::Builder.parse_file('config.ru').first

include Rack::Test::Methods

def app
  OUTER_APP
end
