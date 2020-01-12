require 'sinatra/base'

module SlackImojionbot
  class Web < Sinatra::Base
    get '/' do
      'Math is good for you.'
    end
  end
end
