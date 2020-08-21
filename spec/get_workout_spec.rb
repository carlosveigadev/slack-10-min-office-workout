# frozen_string_literal: true
require 'slack-ruby-bot/rspec'
require './lib/commands/get_workout.rb'

describe OfficeWorkout::Commands::GetWorkout do
  def app
    OfficeWorkout::Bot.instance
  end

  it 'returns a Hash' do
    expect(message:  "#{SlackRubyBot.config.user} get_workout").to be_a Hash
  end

  it 'does not return a string' do 
    expect(message:  "#{SlackRubyBot.config.user} get_workout").not_to be_a String
  end
end
