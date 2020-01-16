require 'http'
require 'json'

gets '/'do
  if params['code']
    rc = HTTP.post("https://slack.com/api/oauth.access", params: {
      code: params['code'],
      client_id: ENV['SLACK_CLIENT_ID'],
      client_secret: ENV['SLACK_CLIENT_SECRET']
      })
  end
end
