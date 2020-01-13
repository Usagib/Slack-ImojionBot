require 'rss'
require 'open-uri'

module SlackImojionbot
  module Commands
    class Cpp < SlackRubyBot::Commands::Base
        command 'cpp' do |client, data, _match|
          url = 'http://cpp-next.com/feed'
          rss = RSS::Parser.parse(open(url).read, false).items.first
          client.say(channel: data.channel, text: "c++ news for you!, here you go!")
          client.say(channel: data.channel, text: rss.link)
        end
    end
  end
end
