class I2r::Cmd::Users

  attr_reader :client

  def initialize(client)
    @client = client
  end

  def get
    client.interface.get("/users")
  end

end
