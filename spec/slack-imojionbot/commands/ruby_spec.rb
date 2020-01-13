require 'spec_helper'
require 'vcr_setup'

describe SlackImojionbot::Commands::Ruby do
  def app
    SlackImojionbot::Bot.instance
  end

  subject { app }

  it 'returns Ruby feed' do
    expect(message: "#{SlackRubyBot.config.user} ruby", channel: 'channel').to respond_with_slack_message('There you go!, Last Ruby news from RubyFlow')
  end
end
