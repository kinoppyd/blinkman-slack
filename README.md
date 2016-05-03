# Blinkman::Slack

Slack adapter for [Blinkman](https://github.com/kinoppyd/blinkman)

## Require configuration

|ENV key|value|require|
|-------|-----|-------|
|SLACK_TOKEN|your slack token|yes|

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'blinkman'
gem 'blinkman-slack'
```

And then execute:

    $ bundle install

## Usage

`when_if` block given [Slack::Messages::Message](https://github.com/dblock/slack-ruby-client/blob/master/lib/slack/messages/message.rb) object. This is [Hashie::Mash](https://github.com/intridea/hashie) object, compatible Slack RTM message JSON.

```ruby
require 'blinkman'
bot = Blinkman::Bot.new do
  blink blue 2.times, during(250), when_if { |message| message.type == 'message' }
end

bot.listen
```

Execute this script file:

    $ bundle exec ruby test.rb

so, Blink your Blink(1) blue twice when you get message on slack.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kinoppyd/blinkman-slack. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

