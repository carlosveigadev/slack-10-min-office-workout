require 'slack-ruby-bot/rspec'
require_relative 'lib/commands/get_motivation.rb'

describe SlackRubyBot::Commands do
  it 'responds with any message' do
    expect(message: "#{SlackRubyBot.config.user} hi").to respond_with_slack_message
  end
end
