require 'thor'

require 'i2r/cli'
require 'i2r/cli/base'
require 'i2r/cli/buckets'
require 'i2r/cli/health'
require 'i2r/cli/hello'
require 'i2r/cli/users'
require 'i2r/cli/orgs'

class I2r::Cli::App < Thor

  def self.exit_on_failure?
    true
  end

  desc "users", "Manage users - list/create/destroy"
  subcommand "users", I2r::Cli::Users

  desc "buckets", "Manage buckets"
  subcommand "bucket", I2r::Cli::Buckets

  desc "health", "Check InfluxDB Health"
  subcommand "health", I2r::Cli::Health

  desc "hello", "For testing and experimentation"
  subcommand "hello", I2r::Cli::Hello

  desc "orgs", "Manage orgs - list/create/destroy"
  subcommand "orgs", I2r::Cli::Orgs

  desc "version", "Show version number"
  def version
    puts "influx2r version #{I2r::VERSION}"
  end

end
