require 'sinatra/base'

module SlackImojionbot
  class Web < Sinatra::Base
    get '/' do
      'Connection succesfull'
    end
  end
end
