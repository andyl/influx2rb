# frozen_string_literal: true

require 'i2r/version'

require 'i2r/cli'

require 'i2r/cmd'
require 'i2r/cmd/authentication'
require 'i2r/cmd/authorizations'
require 'i2r/cmd/buckets'
require 'i2r/cmd/health'
require 'i2r/cmd/orgs'
require 'i2r/cmd/setup'
require 'i2r/cmd/sources'
require 'i2r/cmd/telegrafs'
require 'i2r/cmd/users'

require 'i2r/config'
require 'i2r/config/reader'
require 'i2r/config/profile'

require 'i2r/client'
require 'i2r/interface'
require 'i2r/response'

module I2r
end
