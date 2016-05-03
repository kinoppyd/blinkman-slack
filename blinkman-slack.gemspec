# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'blinkman/slack/version'

Gem::Specification.new do |spec|
  spec.name          = "blinkman-slack"
  spec.version       = Blinkman::Slack::VERSION
  spec.authors       = ["Kinoshita.Yasuhiro"]
  spec.email         = ["WhoIsDissolvedGirl+github@gmail.com"]

  spec.summary       = %q{Blinkman adapter for Slack Realtime API.}
  spec.description   = %q{Blinkman adapter for Slack Realtime API.}
  spec.homepage      = "https://github.com/kinoppyd/blinkman-slack"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_dependency "slack-ruby-client", "~> 0.7"
  spec.add_dependency "blinkman", "~> 0.1"
  spec.add_dependency "eventmachine"
  spec.add_dependency "faye-websocket", "~> 0.9.2"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
