# frozen_string_literal: true

module Entities
  ##
  # Layout for the Ping API response.
  #
  class Ping < Grape::Entity
    expose :message
    expose :status, documentation: { type: 'string', desc: 'HTTP status of the response.' }
  end
end
