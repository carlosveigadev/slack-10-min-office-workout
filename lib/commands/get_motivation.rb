require_relative '../data/motivational_quotes.rb'
module OfficeWorkout
  module Commands
    # Class to define the get_motivation command that returns a motivational quote.
    class GetMotivation < SlackRubyBot::Commands::Base
      motivation = Motivation.motivational_quotes
      command 'get_motivation' do |client, data, _match|
        client.say(channel: data.channel, text: "Come on, check this out:
          #{motivation[rand(0...motivation.length)]}")
      end
    end
  end
end
