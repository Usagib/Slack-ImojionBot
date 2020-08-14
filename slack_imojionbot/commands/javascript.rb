require 'rss'
require 'open-uri'

module SlackImojionbot
  module Commands
    class JavaScript < SlackRubyBot::Commands::Base
      command 'javascript' do |client, data, _match|
        url = 'https://www.sitepoint.com/javascript/feed'
        rss = RSS::Parser.parse(open(url).read, false).items.first
        client.say(channel: data.channel, text: 'Want some javascript? SitePoint got you covered')
        client.say(channel: data.channel, text: rss.link)
      end
    end
  end
end
