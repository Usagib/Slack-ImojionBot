require 'spec_helper'
require 'vcr_setup'

describe SlackImojionbot::Commands::News do
  def app
    SlackImojionbot::Bot.instance
  end

  subject { app }

  it 'returns news feed' do
    expect(message: "#{SlackRubyBot.config.user} news", channel: 'channel').to respond_with_slack_message('Here it is! Last Global news from CNN')
  end
end
