# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.read('.ruby-version').strip

# Loads environment variables from `.env`.
gem 'dotenv', '~> 3.0'

# A Ruby framework for rapid API development with great conventions.
gem 'grape', '~> 2.0'

# Extracted from Grape, A Ruby framework for rapid API development with great conventions.
gem 'grape-entity', '~> 1.0.0'

# Add auto generated documentation to your Grape API that can be displayed with Swagger.
gem 'grape-swagger', '~> 2.0'

# Grape swagger adapter to support grape-entity object parsing
gem 'grape-swagger-entity', '~> 0.5.3'

# Use Puma as the app server.
gem 'puma', '~> 6.4'

# Rack provides a minimal, modular and adaptable interface for developing web applications in Ruby.
gem 'rack', '~> 3.0'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible.
gem 'rack-cors'

# Rake is a Make-like program implemented in Ruby.
gem 'rake', '~> 13.1'

# Zeitwerk implements constant autoloading with Ruby semantics.
gem 'zeitwerk', '~> 2.6'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console.
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Pry is a runtime developer console and IRB alternative with powerful introspection capabilities.
  gem 'pry', '~> 0.14.1'
  gem 'rubocop', '~> 1.62.0'
  gem 'rubocop-minitest', require: false
  gem 'rubocop-performance', '~> 1.20', require: false
  gem 'rubocop-rake', require: false
end

group :test do
  # minitest provides a complete suite of testing facilities supporting TDD, BDD, mocking, and benchmarking.
  gem 'minitest', '~> 5.22'
  # Rack::Test is a small, simple testing API for Rack apps.
  gem 'rack-test', '~> 2.1'
end
