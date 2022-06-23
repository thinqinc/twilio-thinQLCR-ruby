# twilio-thinQLCR, Twilio Wrapper Ruby Library For thinQ LCR integration

**This package is no longer maintainted. You should use the rest API instead**
--------------------------------------------------------------------------

##**Note that you will need a valid LCR Account with thinQ before using the libraries. For more information please contact your thinQ Sales representative at [http://www.thinq.com/library/](http://www.thinq.com/library/)**

#### *Authored by thinQ, Inc 2017*
#### Versioning Info

  * twilio_thinlcr v1.0.3 - 2017/7/24 - works with twilio-ruby ~>5.0
  * twilio_thinlcr v1.0.2 - 2017/4/13 - works with twilio-ruby ~>4.0
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'twilio_thinqlcr'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install twilio_thinqlcr

## Usage

From Console:
irb

require 'twilio_thinqlcr'

require 'twilio-ruby'

@test = TwilioThinqlcr::TwilioWrapper.new('*twilio_account_sid*', '*twilio_account_token*', '*thinQ_id*', '*thinQ_token*')

@test.call('*FROM NUMBER*','*TO NUMBER*',['*Optional Custom TWIML Resource URL'])

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/thinqinc/twilio-thinQLCR-ruby.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

