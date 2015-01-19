# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'facebook_birthdays/version'

Gem::Specification.new do |spec|
  spec.name          = "facebook_birthdays"
  spec.version       = FacebookBirthdays::VERSION
  spec.authors       = ["Nicholas Silva"]
  spec.email         = ["nick@silvamerica.com"]
  spec.summary       = %q{Pulls a parseable calendar of all your Facebook friends' birthdays.}
  spec.description   = %q{Pulls a parseable calendar of all your Facebook friends' birthdays.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "selene"
  spec.add_runtime_dependency "activesupport"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
