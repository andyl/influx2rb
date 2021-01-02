class I2r::Client

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
