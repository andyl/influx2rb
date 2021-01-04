class I2r::Client

  attr_accessor :cfg_key, :configs, :profile, :interface
  attr_accessor :url, :token, :org

  # ----- constructors -----

  def initialize(cfg_key = "default")
    configs = I2r::Config::Reader.configs
    set_params(cfg_key, configs)
  end

  def self.using_params(params)
    profile = I2r::Config::Profile.new(parms)
    configs = I2r::Config::Reader.configs.merge({"custom" => profile})
    instance = allocate
    instance.set_params("custom", configs)
    instance
  end

  def set_params(cfg_key, configs)
    @cfg_key = cfg_key
    @configs = configs
    @profile = configs[cfg_key]
  end

  # ----- interface -----

  def interface
    @interface ||= I2r::Interface.new(self)
  end

  # ----- commands -----
  def setup
    @setup ||= I2r::Cmd::Setup.new(self)
  end

  def telegrafs
    @telegrafs ||= I2r::Cmd::Telegrafs.new(self)
  end

  def users
    @users ||= I2r::Cmd::Users.new(self)
  end

  def health
    @health ||= I2r::Cmd::Users.new(self)
  end

  def buckets
    @buckets ||= I2r::Cmd::Buckets.new(self)
  end

  def authorizations
    @authorizations ||= I2r::Cmd::Authorizations.new(self)
  end

  def organizations
    @organizations ||= I2r::Cmd::Organizations.new(self)
  end

end
