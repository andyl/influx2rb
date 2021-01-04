require 'i2r/config'
require 'toml'

class I2r::Config::Reader

  CFGFILE = File.expand_path('~/.influxdbv2/configs')

  def self.configs
    raw_data.map {|k, v| [k.to_s, I2r::Config::Profile.new(v)]}.to_h
  end

  def self.raw_data
    return {} unless File.exist?(CFGFILE)
    TOML.load_file(CFGFILE)
  end

end
