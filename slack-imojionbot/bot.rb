module SlackImojionbot
  class Bot < SlackRubyBot::Bot
    help do
      title 'Rss feed and gif bot'
      desc 'Ruby Microverse Capstone Project.'
    end
      command :hello do
        title 'hello'
        desc 'Returns instructions for bot usage'
        long_desc 'Returns instructions for bot usage'
      end
  end
end
