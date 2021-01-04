class I2r::Cmd::Orgs

  attr_reader :client

  def initialize(client)
    @client = client
  end

  def get
    client.interface.get("/orgs")
  end

end
