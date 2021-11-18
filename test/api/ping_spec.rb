# frozen_string_literal: true

require_relative '../spec_helper'

describe PingController do
  include Rack::Test::Methods

  it 'respond with a 200 status' do
    get '/api/v1/ping'
    assert last_response.ok?
  end

  it 'respond with a status' do
    get '/api/v1/ping'
    response = JSON.parse(last_response.body)
    assert(response.key?('status'))
  end

  it 'has a status 200 in the body' do
    get '/api/v1/ping'
    response = JSON.parse(last_response.body)
    assert_equal(200, response['status'])
  end

  it 'respond with a message' do
    get '/api/v1/ping'
    response = JSON.parse(last_response.body)
    assert(response.key?('message'))
  end

  it 'respond with a Pong message' do
    get '/api/v1/ping'
    response = JSON.parse(last_response.body)
    assert_equal('Pong', response['message'])
  end
end
