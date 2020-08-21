# frozen_string_literal: true
require 'slack-ruby-bot/rspec'
require './lib/commands/get_motivation.rb'


describe SlackRubyBot::Commands do
  it 'responds with any message' do
    expect(message: "#{SlackRubyBot.config.user} hi").to respond_with_slack_message
  end
end

describe OfficeWorkout::Commands::GetMotivation do
  def app
    OfficeWorkout::Bot.instance
  end
  
  it 'responds with a string' do
    expect(message:  "#{SlackRubyBot.config.user} get_motivation").to be_a Hash
  end
end


# describe SlackStackbot::Commands::Search do

#   let(:some_results) do
#     StackOverflow::Search.new.questions('HTML api')
#   end
#   let(:no_results) do
#     StackOverflow::Search.new.questions('sakdjaskldjhsdawe3')
#   end
#   it 'StackOverflow search returns some results' do
#     expect(message: 'stackbot search HTML api').to respond_with_slack_message(some_results)
#   end
#   it 'StackOverflow search returns no results' do
#     expect(message: 'stackbot search sakdjaskldjhsdawe3').to respond_with_slack_message(no_results)
#   end
#   it 'Search terms missing' do
#     expect(message: 'stackbot search').to respond_with_slack_message('Search for what?')
#   end
# end

