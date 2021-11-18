# frozen_string_literal: true

require 'grape-swagger/entity'

module API
  ##
  # Routes for /api/v1.
  #
  class APIv1 < Grape::API
    version 'v1', using: :path
    format :json
    content_type :json, 'application/json'
    prefix :api

    # Custom handling of API validation errors
    rescue_from Grape::Exceptions::ValidationErrors do |e|
      error!({ message: e.message, status: 400 }, 400)
    end

    rescue_from :all do |_e|
      # Place here logging and external error handling (Sentry, Rollabar, ...)
      error!({ message: 'Internal Server error.', status: 500 }, 500)
    end

    mount PingController
    add_swagger_documentation \
      mount_path: '/swagger',
      add_version: true,
      doc_version: '1.1.1',
      info: {
        title: 'jveillet/ruby-api-template',
        description: 'An API template build with Plain Old Ruby.',
        contact_name: 'Jérémie Veillet',
        contact_email: 'jveillet@hey.com',
        contact_url: 'https://github.com/jveillet',
        license: 'MIT',
        license_url: 'https://github.com/jveillet/ruby-api-template/blob/latest/LICENSE'
      }

    # All other URLs respond with a 404 error
    route :any, '*path' do
      error!({ message: 'Not Found.', status: 404 }, 404)
    end
  end
end
