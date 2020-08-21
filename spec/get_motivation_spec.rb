# frozen_string_literal: true
require 'slack-ruby-bot/rspec'
require './lib/commands/get_motivation.rb'

describe OfficeWorkout::Commands::GetMotivation do
  def app
    OfficeWorkout::Bot.instance
  end
  
  it 'responds with a string' do
    expect(message:  "#{SlackRubyBot.config.user} get_motivation").to be_a Hash
  end
end
