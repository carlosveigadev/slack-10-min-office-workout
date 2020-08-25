require_relative '../data/workouts.rb'
require_relative 'get_random'

module OfficeWorkout
  module Commands
    # Class to define the get_workout command that returns a YoutTube link to a workout.
    class GetWorkout < SlackRubyBot::Commands::Base
      workout = Workouts.workouts_list
      workout_random = workout[GetRandom.randomize(workout)]
      command 'get_workout' do |client, data, _match|
        client.say(channel: data.channel, text: "I am glad you are here! Enjoy the workout!#{workout_random}")
      end
    end
  end
end
