# frozen_string_literal: true

require 'zeitwerk'
require 'logger'

require_relative 'boot'

Bundler.require :default, ENV['RACK_ENV']
