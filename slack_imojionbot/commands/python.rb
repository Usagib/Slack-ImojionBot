require 'rss'
require 'open-uri'

module SlackImojionbot
  module Commands
    class Python < SlackRubyBot::Commands::Base
      command 'python' do |client, data, _match|
        url = 'https://planetpython.org/rss20.xml'
        rss = RSS::Parser.parse(open(url).read, false).items.first
        client.say(channel: data.channel, text: 'Planetpython got what you need!')
        client.say(channel: data.channel, text: rss.link)
      end
    end
  end
end
