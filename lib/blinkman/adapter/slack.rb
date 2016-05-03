require 'slack'

module Blinkman
  module Adapter
    class Slack < Base
      include Configurable

      configure 'slack_token'

      def slack_rtm
        configure_slack
        @slack_rtm ||= ::Slack::RealTime::Client.new
      end

      def configure_slack
        ::Slack.configure do |config|
          config.token = slack_token
        end
      end

      def listen
        slack_rtm.start! do |event|
          event.on :message do |m|
            message = ::Slack::Messages::Message.new(JSON.parse(m.data))
            bot.on_receive(message)
          end
        end
      end
    end
  end
end
