$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'dotenv'
Dotenv.load

require 'slack_imojionbot'
require 'web'

Thread.abort_on_exception = true

Thread.new do
  begin
    SlackImojionbot::Bot.run
  rescue StandardError => e
    warn "ERROR: #{e}"
    warn e.backtrace
    raise e
  end
end

run SlackImojionbot::Web
