# frozen_string_literal: true

require 'slack-ruby-bot/rspec'
require './lib/commands/get_motivation.rb'

describe SlackRubyBot::Commands do
  it 'responds with help message' do
    expect(message: "#{SlackRubyBot.config.user} help").to respond_with_slack_message
  end
end
