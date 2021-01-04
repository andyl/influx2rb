require 'optparse'

Options = Struct.new(:name)

class I2r::Cli::Parser

  def self.parse(options)
    args = Options.new("world")

    opt_parser = OptionParser.new do |opts|
      opts.banner = "Usage: influx2rb [options]"

      opts.on("-cCONFIG", "--config=CONFIG", "Name of config to use") do |c|
        args.config = c
      end

      opts.on("-nNAME", "--name=NAME", "Name to say hello to") do |n|
        args.name = n
      end

      opts.on("-h", "--help", "Prints this help") do
        puts opts
        exit
      end
    end

    opt_parser.parse!(options)
    return args
  end
end
