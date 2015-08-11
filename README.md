# ColorSchemaValidator

Color schema validator for Rails.

Like `#FF0000`, `#00ff00` and `#00f` strings are allowed.

Other strings are denied.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'color-schema-validator'
```

And then execute:

    $ bundle

## Usage

```ruby
class Item < ActiveRecord::Base
  validates :color, color_schema: true
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kaosf/color-schema-validator.

## License

[MIT](http://opensource.org/licenses/MIT)

Copyright (C) 2015 ka
