require 'spec_helper'
require 'vcr_setup'

describe SlackImojionbot::Commands::Java do
  def app
    SlackImojionbot::Bot.instance
  end

  subject { app }

  it 'returns java feed' do
    expect(message: "#{SlackRubyBot.config.user} java", channel: 'channel').to respond_with_slack_message('Java and SQL news! fresh from JOOQ Blog')
  end
end
