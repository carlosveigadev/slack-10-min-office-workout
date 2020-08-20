
# module OfficeWorkout
#   module Commands
#     class GetWorkout < SlackRubyBot::Commands::Base
#       command 'get_workout' do |client, data, _match|
#         client.say(channel: data.channel, text: 'this is the text')
#       end
#     end
#   end
# end
require './lib/workouts/workouts.rb'
puts workouts[rand(0...workouts.length)]