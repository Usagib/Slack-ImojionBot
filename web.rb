require 'sinatra/base'

module SlackImojionbot
  class Web < Sinatra::Base
        response = HTTParty.get("https://imojionbot.herokuapp.com/")
        reponse.code
        responde.body
      end
  end
end
