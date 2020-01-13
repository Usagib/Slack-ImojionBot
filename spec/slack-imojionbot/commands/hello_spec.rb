require 'spec_helper'
require 'vcr_setup'

describe SlackImojionbot::Commands::Hello do
  def app
    SlackImojionbot::Bot.instance
  end

  subject { app }

  it 'returns hello message' do
    expect(message: "#{SlackRubyBot.config.user} hello", channel: 'channel').to respond_with_slack_message('Hello!, Im Imojion here for helping you take 5 minutes off, write help to see a list of my commands')
  end
end
