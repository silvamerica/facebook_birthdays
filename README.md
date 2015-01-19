# FacebookBirthdays

Pulls a parseable calendar of all your Facebook friends' birthdays.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'facebook_birthdays'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install facebook_birthdays

## Usage

CALENDAR=<YOUR CAL URL> bundle exec ruby -r './lib/facebook_birthdays.rb' -e "@c = FacebookBirthdays::Calendar.new(ENV['CALENDAR']); print @c.birthdays_for(Date.today)"

## Contributing

1. Fork it ( https://github.com/[my-github-username]/facebook_birthdays/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
