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
    named 'GET /Ping'
    headers %w[
      Access-Control-Allow-Origin
      Access-Control-Allow-Methods
      Access-Control-Expose-Headers
      Access-Control-Max-Age
      Content-Type
      X-Request-Id
      Vary
      Content-Encoding
      Transfer-Encoding
    ]
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
