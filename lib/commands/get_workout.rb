require './lib/workouts/workouts.rb'

module OfficeWorkout
  module Commands
    class GetWorkout < SlackRubyBot::Commands::Base
      command 'get_workout' do |client, data, _match|
        client.say(channel: data.channel, text: Workouts.workouts_list[rand(0...Workouts.workouts_list.length)])
      end
    end
  end
end
