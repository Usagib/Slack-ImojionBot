require 'sinatra/base'

module SlackImojionbot
  class Web < Sinatra::Base
    get '/' do
      if params['code']
        rc = HTTP.post("https://slack.com/api/oauth.access", params: {
          code: params['code'],
          client_id: ENV['SLACK_CLIENT_ID'],
          client_secret: ENV['SLACK_CLIENT_SECRET']
          })
      end
    end
  end
end
