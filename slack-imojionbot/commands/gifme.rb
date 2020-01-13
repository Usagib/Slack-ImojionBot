
module SlackGoogleBot
  module Commands
    class Gifme < SlackRubyBot::Commands::Base
      match(/^(?<bot>\w*)\s(?<gifme>\w+)\s(?<expression>.*)$/) do |client, data, match|
        expression = match['expression'].strip
        client.say(text: "Gifyou!", channel: data.channel, gif: expression)
      end
    end
  end
end
