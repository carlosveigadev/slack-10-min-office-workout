# frozen_string_literal: true

require 'slack-ruby-bot/rspec'

group :development, :test do
  gem 'rack-test'
  gem 'rspec'
  gem 'vcr'
  gem 'webmock'
end

require_relative '../office_workout.rb'