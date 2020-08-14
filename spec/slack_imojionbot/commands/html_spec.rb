require 'spec_helper'
require 'vcr_setup'

describe SlackImojionbot::Commands::Html do
  def app
    SlackImojionbot::Bot.instance
  end

  subject { app }

  it 'returns html feed' do
    expect(message: "#{SlackRubyBot.config.user} html", channel: 'channel').to respond_with_slack_message('All about the web Last Web Dev news from SitePoint')
  end
end
