class I2r::Cmd::Sources

  attr_reader :client

  def initialize(client)
    @client = client
  end

  def get
    client.interface.get("/sources")
  end

end
