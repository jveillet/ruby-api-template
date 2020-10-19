# frozen_string_literal: true

##
# APi controller for /api/v1/ping.
#
class PingController < ApplicationController
  desc 'Returns Pong.' do
    summary 'Health Check of the API'
    detail ''
    success [{ code: 200, model: Entities::Ping, message: 'Pong' }]
    failure []
    named 'Ping'
    headers []
    deprecated false
    is_array false
    produces ['application/json']
    consumes ['application/json']
    tags %w[api health]
  end
  get :ping do
    status 200

    message = { message: 'Pong', status: 200 }
    present message, with: Entities::Ping
  end
end
