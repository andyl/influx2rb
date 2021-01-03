require 'i2r/config'

class I2r::Config::Profile

  attr_accessor :host, :user, :pass

  def initialize(args = {})
    @args = args
    @host = args[:host] || "TBD"
    @user = args[:user] || "TBD"
    @pass = args[:pass] || "TBD"
  end

end
