require 'rss'
require 'open-uri'

module SlackImojionbot
  module Commands
    class Java < SlackRubyBot::Commands::Base
        command 'java' do |client, data, _match|
          url = 'blog.jooq.org/feed'
          rss = RSS::Parser.parse(open(url).read, false).items.first
          client.say(channel: data.channel, text: "Java and SQL news! fresh from JOOQ Blog")
          client.say(channel: data.channel, text: rss.link)
        end
    end
  end
end
