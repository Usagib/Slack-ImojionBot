require 'sinatra/base'

module SlackImojionbot
  class Web < Sinatra::Base
    get '/' do
      'Connection succesfull'
      request.body.rewind
      puts @request_payload = JSON.parse(request.body.read, symbolize_names: true)
    end
  end
end
