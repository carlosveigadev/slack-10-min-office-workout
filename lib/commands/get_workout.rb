module OfficeWorkout
  module Commands
    class GetWorkout < SlackRubyBot::Commands::Base
      command 'get_random_workout' do |client, data, _match|
        client.say(channel: data.channel, text: 'this is the text')
      end
    end
  end
end
