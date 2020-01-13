require 'spec_helper'
require 'vcr_setup'

describe SlackImojionbot::Commands::Css do
  def app
    SlackImojionbot::Bot.instance
  end

  subject { app }

  it 'returns css feed' do
    expect(message: "#{SlackRubyBot.config.user} css", channel: 'channel').to respond_with_slack_message('Design here! Last CSS news from CSS-tricks')
  end
end
