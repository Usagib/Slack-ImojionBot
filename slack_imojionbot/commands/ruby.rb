require 'rss'
require 'open-uri'

module SlackImojionbot
  module Commands
    class Ruby < SlackRubyBot::Commands::Base
      command 'ruby' do |client, data, _match|
        url = 'https://rubyland.news/feed.rss'
        rss = RSS::Parser.parse(open(url).read, false).items.first
        client.say(channel: data.channel, text: 'There you go!, Last Ruby news from RubyFlow')
        client.say(channel: data.channel, text: rss.link)
      end
    end
  end
end
