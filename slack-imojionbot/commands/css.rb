require 'rss'
require 'open-uri'

module SlackImojionbot
  module Commands
    class Css < SlackRubyBot::Commands::Base
        command 'css' do |client, data, _match|
          url = 'http://css-tricks.com/feed'
          rss = RSS::Parser.parse(open(url).read, false).items.first
          client.say(channel: data.channel, text: "Design here! Last CSS news from CSS-tricks")
          client.say(channel: data.channel, text: rss.link)
        end
    end
  end
end
