require 'slack-ruby-bot/rspec'
require './lib/commands/get_motivation.rb'

describe OfficeWorkout::Commands::GetMotivation do
  def app
    OfficeWorkout::Bot.instance
  end

  it 'returns responds with message' do
    expect(message:  "#{SlackRubyBot.config.user} get_motivation").to respond_with_slack_message
  end

  it 'returns a Hash' do
    expect(message:  "#{SlackRubyBot.config.user} get_motivation").to be_a Hash
  end

  it 'does not return a string' do
    expect(message:  "#{SlackRubyBot.config.user} get_motivation").not_to be_a String
  end
end
