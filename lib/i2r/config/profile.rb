require 'i2r/config'

class I2r::Config::Profile

  attr_accessor :args, :url, :org, :token

  def initialize(input = {})
    @args  = input.map {|k, v| [k.to_s, v]}.to_h
    @url   = args["url"]   || "http://localhost:8086"
    @org   = args["org"]   || "TBD"
    @token = args["token"] || "TBD"
  end
end
