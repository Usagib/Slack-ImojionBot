module SlackImojionbot
  module Commands
    class Call < SlackRubyBot::Commands::Base
      command 'call'  do |client, data, _match|
        client.say(channel: data.channel, text: 'called', gif: 'kitten')
      end
    end
  end
end
