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

    mount PingController
    add_swagger_documentation \
      mount_path: '/swagger',
      add_version: true,
      doc_version: '1.0.0',
      info: {
        title: 'jveillet/ruby-api-template',
        description: 'An API template build with Plain Old Ruby.',
        contact_name: 'Jérémie Veillet',
        contact_email: 'jveillet@hey.com',
        contact_url: 'https://github.com/jveillet',
        license: 'GPL v3',
        license_url: 'https://github.com/jveillet/ruby-api-template/blob/latest/LICENSE'
      }
  end
end
