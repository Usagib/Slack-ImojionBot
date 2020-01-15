require 'rss'
require 'open-uri'

module SlackImojionbot
  module Commands
    class Reddit < SlackRubyBot::Commands::Base
        command 'reddit' do |client, data, _match|
          url = 'http://reddit.com/r/programming/.rss'
          rss = RSS::Parser.parse(open(url).read, false).items.first
          client.say(channel: data.channel, text: "Reddit for programmers, here you go!")
          client.say(channel: data.channel, text: rss.link)
        end
    end
  end
end
