# frozen_string_literal: true

require './lib/workouts/workouts.rb'

module OfficeWorkout
  module Commands
    # Class to define the get_workout command that returns a YoutTube link to a workout.
    class GetWorkout < SlackRubyBot::Commands::Base
      command 'get_workout' do |client, data, _match|
        client.say(channel: data.channel, text: 'I am glad you are here! Enjoy the workout!')
        client.say(channel: data.channel, text: Motivation.motivational_quotes[rand(0...Workouts.motivational_quotes.length)])
      end
    end
  end
end
