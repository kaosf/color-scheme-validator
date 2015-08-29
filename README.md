# ColorSchemeValidator

[![Gem Version](https://badge.fury.io/rb/color-scheme-validator.svg)](http://badge.fury.io/rb/color-scheme-validator)
[![Dependency Status](https://gemnasium.com/kaosf/color-scheme-validator.svg)](https://gemnasium.com/kaosf/color-scheme-validator)
[![Build Status](https://travis-ci.org/kaosf/color-scheme-validator.svg)](https://travis-ci.org/kaosf/color-scheme-validator)
[![Code Climate](https://codeclimate.com/github/kaosf/color-scheme-validator/badges/gpa.svg)](https://codeclimate.com/github/kaosf/color-scheme-validator)

Color scheme validator for Rails.

Like `#FF0000`, `#00ff00` and `#00f` strings are allowed.

Other strings are denied.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'color-scheme-validator'
```

And then execute:

    $ bundle

## Usage

```ruby
class Item < ActiveRecord::Base
  validates :color, color_scheme: true
end
```

## Locales

Run

```sh
rails g colorscheme:install
```

to generate `config/locales/colorscheme.en.yml`.

If you want to use another language, append an argument like

```sh
rails g colorscheme:install ja
```

to generate `config/locales/colorscheme.ja.yml`.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kaosf/color-scheme-validator.

## References

* [shirasagi/email_validator.rb at 3e6b88b741048af6ca15e90236964b84da8c7fe6 · shirasagi/shirasagi](https://github.com/shirasagi/shirasagi/blob/3e6b88b741048af6ca15e90236964b84da8c7fe6/app/validators/email_validator.rb)
* [balexand/email_validator](https://github.com/balexand/email_validator)
* [Railsのi18nの基本的な使い方まとめ - Rails Webook](http://ruby-rails.hatenadiary.com/entry/20150226/1424937175)
* [Creating and Customizing Rails Generators & Templates — Ruby on Rails Guides](http://guides.rubyonrails.org/generators.html)
* [plataformatec/devise](https://github.com/plataformatec/devise)

## License

[MIT](http://opensource.org/licenses/MIT)

Copyright (C) 2015 ka
