require 'sinatra/base'

module SlackImojionbot
  class Web < Sinatra::Base
    get '/' do
      # Instantiate a web client
      client = Slack::Web::Client.new
      # Request a token using the temporary code
      rc = client.oauth_access(
      client_id: ENV['SLACK_CLIENT_ID'],
      client_secret: ENV['SLACK_CLIENT_SECRET'],
      code: params[:code]
    )
    token = rc['bot']['bot_access_token']
    end
  end
end
