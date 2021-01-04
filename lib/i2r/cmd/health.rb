class I2r::Cmd::Health

  attr_reader :client

  def initialize(client)
    @client = client
  end

  def get
    client.interface.get("/health")
  end

end
