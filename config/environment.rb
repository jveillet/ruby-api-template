# frozen_string_literal: true

ENV['RACK_ENV'] ||= 'test'

require File.expand_path('application', __dir__)

loader = Zeitwerk::Loader.new
loader.tag = File.basename(__FILE__, '.rb')
loader.push_dir('./app')
loader.push_dir('./lib')
loader.collapse('./app/')
loader.collapse('./app/controllers')

loader.inflector.inflect 'api' => 'API'
loader.inflector.inflect 'api_v1' => 'APIv1'
loader.log! if ENV.fetch('ZEITWEIRK_LOG', false)

loader.enable_reloading
loader.setup
