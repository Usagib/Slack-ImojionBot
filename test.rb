require 'http'
require 'json'

rc = HTTP.post("https://slack.com/api/chat.postMessage", params: {
  token: ENV['SLACK_API_TOKEN'],
  channel: '#general',
  text: 'HelloWorld'
})
puts JSON.pretty_generate(JSON.parse(rc.body))
