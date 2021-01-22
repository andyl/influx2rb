# influx2rb

This gem `influx2rb` is a simple Ruby interface that uses the InfluxDB 2.0 API.

The gem includes a CLI, and is intended to be simple for hacking and
experimentation.

The gem exposes only a subset of the InfluxDB 2.0 API.  The code should be
straightforward to extend to cover more API features.


## CLI

Install the CLI as:

    $ gem install influx2rb

Then run the CLI `influx2rb help` to see the command-line options.

## Embedding

Add this line to your application's Gemfile:

```ruby
gem 'influx2rb'
```

And then execute:

    $ bundle install

To embed `influx2rb` into your application, study the `I2r::Client` and
`I2r::Cmd` classes.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake spec` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.  Run `rdoc` to generate docs.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push
git commits and the created tag, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are always welcome on GitHub at https://github.com/andyl/influx2rb.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
