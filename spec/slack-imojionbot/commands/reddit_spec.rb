require 'spec_helper'
require 'vcr_setup'

describe SlackImojionbot::Commands::Reddit do
  def app
    SlackImojionbot::Bot.instance
  end

  subject { app }

  it 'returns reddit feed' do
    expect(message: "#{SlackRubyBot.config.user} reddit", channel: 'channel').to respond_with_slack_message('Reddit for programmers, here you go!')
  end
end
