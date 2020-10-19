# frozen_string_literal: true

require_relative '../spec_helper.rb'

describe PingController do
  it 'respond with a 200 status' do
    get '/api/v1/ping'
    assert last_response.ok?
  end

  it 'respond with a message' do
    get '/api/v1/ping'
    response = JSON.parse(last_response.body)
    assert(response.key?('message'))
  end

  it 'respond with a Pong message' do
    get '/api/v1/ping'
    response = JSON.parse(last_response.body)
    assert(response['message'] == 'Pong')
  end
end
