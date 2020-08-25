require_relative '../data/motivational_quotes.rb'
require_relative 'get_random'
module OfficeWorkout
  module Commands
    # Class to define the get_motivation command that returns a motivational quote.
    class GetMotivation < SlackRubyBot::Commands::Base
      motivation = Motivation.motivational_quotes
      motivation_random = motivation[GetRandom.randomize(motivation)]
      command 'get_motivation' do |client, data, _match|
        client.say(channel: data.channel, text: "Come on, check this out:
          #{motivation_random}")
      end
    end
  end
end
