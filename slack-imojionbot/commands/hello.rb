module SlackImojionbot
  module Commands
    class Hello < SlackRubyBot::Commands::Base
      command 'hello'  do |client, data, _match|
        client.say(channel: data.channel, text: "Hello!, Im Imojion here for helping you take 5 minutes off, write help to see a list of my commands", gif: 'read')
      end
    end
  end
end
