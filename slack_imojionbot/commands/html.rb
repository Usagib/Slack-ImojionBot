require 'rss'
require 'open-uri'

module SlackImojionbot
  module Commands
    class Html < SlackRubyBot::Commands::Base
      command 'html' do |client, data, _match|
        url = 'http://sitepoint.com/feed'
        rss = RSS::Parser.parse(open(url).read, false).items.first
        client.say(channel: data.channel, text: 'All about the web Last Web Dev news from SitePoint')
        client.say(channel: data.channel, text: rss.link)
      end
    end
  end
end
