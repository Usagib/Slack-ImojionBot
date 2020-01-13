require 'spec_helper'
require 'vcr_setup'

describe SlackImojionbot::Commands::JavaScript do
  def app
    SlackImojionbot::Bot.instance
  end

  subject { app }

  it 'returns js feed' do
    expect(message: "#{SlackRubyBot.config.user} javascript", channel: 'channel').to respond_with_slack_message('Want some javascript? SitePoint got you covered')
  end
end
