require 'i2r/cli/buckets'
require 'i2r/cli/user'

class I2r::Cli < Thor

  desc "parentcommand SUBCOMMAND", "Some Parent Command User"
  subcommand "user", I2r::Cli::User

  desc "parentcommand SUBCOMMAND", "Some Parent Command Buckets"
  subcommand "user", I2r::Cli::Buckets

end
