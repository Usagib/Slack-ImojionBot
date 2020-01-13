require 'rss'
require 'open-uri'

module SlackImojionbot
  module Commands
    class News < SlackRubyBot::Commands::Base
        command 'news' do |client, data, _match|
          url = 'http://rss.cnn.com/rss/edition.rss'
          rss = RSS::Parser.parse(open(url).read, false).items.first
          client.say(channel: data.channel, text: "Here it is! Last Global news from CNN")
          client.say(channel: data.channel, text: rss.link)
        end
    end
  end
end
