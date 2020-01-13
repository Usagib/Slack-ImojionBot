require 'spec_helper'
require 'vcr_setup'

describe SlackImojionbot::Commands::Python do
  def app
    SlackImojionbot::Bot.instance
  end

  subject { app }

  it 'returns Python feed' do
    expect(message: "#{SlackRubyBot.config.user} python", channel: 'channel').to respond_with_slack_message('Planetpython got what you need!')
  end
end
