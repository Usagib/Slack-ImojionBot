require 'sinatra/base'

module SlackImojionbot
  class Web < Sinatra::Base
    before do
      request.body.rewind
      puts @request_payload = JSON.parse(request.body.read, symbolize_names: true)
    end
    get '/' do
      'Connection succesfull'
    end
  end
end
