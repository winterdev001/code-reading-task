require "slack-notifier"
require 'clockwork'
require 'active_support/time'

module Clockwork
  # Here is a Clockwork method that says, "How long does it take you to process?"
  # Write the process and settings you want to send at regular intervals with slack here
  handler do |send|
    notifier = Slack::Notifier.new('https://hooks.slack.com/services/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')
    notifier.ping('hello there')
  end

  every(3.seconds, 'send')
end