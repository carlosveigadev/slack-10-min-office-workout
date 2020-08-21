require './lib/data/motivational_quotes.rb'

module OfficeWorkout
  module Commands
    # Class to define the get_motivation command that returns a motivational quote.
    class GetMotivation < SlackRubyBot::Commands::Base
      command 'get_motivation' do |client, data, _match|
        client.say(channel: data.channel, text: "Come on, check this out:
          #{Motivation.motivational_quotes[rand(0...Motivation.motivational_quotes.length)]}")
      end
    end
  end
end
