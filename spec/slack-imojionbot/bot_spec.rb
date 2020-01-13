require 'spec_helper'

describe SlackImojionbot::Bot do
  def app
    SlackImojionbot::Bot.instance
  end

  subject { app }

  it_behaves_like 'a slack ruby bot'
end
