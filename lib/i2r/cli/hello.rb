class I2r::Cli::Hello < Thor
  class_option :upcase, :type => :boolean

  desc "world", "an example hello task - hello world"
  long_desc <<-LONGDESC
    This is a long_desc message.  I could make this as long as I wanted.

    To view this block, type `bin/influx2rb hello help world`.

    Note: To keep CLI classes short and readable, LONGDESC blocks can be stored
    in a separate file, ingested with `File.read`.
  LONGDESC
  option :altname
  def world
    name = options[:altname] || "World"
    msg = "Hello #{name}"
    output = options[:upcase] ? msg.upcase : msg
    puts output
  end

  desc "name <NAME>", "say your name"
  def name(yourname)
    puts "HELLO #{yourname}"
  end
end
