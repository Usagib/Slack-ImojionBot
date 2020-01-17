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
      command :css do
        title 'css'
        desc 'Css Article'
        long_desc 'Gives you the last css article feed'
      end
      command :html do
        title 'html'
        desc 'Web Article'
        long_desc 'Gives you the last web article feed'
      end
      command :java do
        title 'java'
        desc 'Java Article'
        long_desc 'Gives you the last java article feed'
      end
      command :javascript do
        title 'js'
        desc 'js Article'
        long_desc 'Gives you the last JS article feed'
      end
      command :news do
        title 'news'
        desc 'CNN News'
        long_desc 'Gives you the last global news'
      end
      command :python do
        title 'python'
        desc 'Python Article'
        long_desc 'Gives you the last python article feed'
      end
      command :gifme do
        title 'gifyou'
        desc 'get gif'
        long_desc 'Use gif <gif_name> to get an instant gif'
      end

  end
end
