##
# Manages the HTTP interface to the InfluxDB Server.

require 'rest-client'

class I2r::Interface

  VSN_PREFIX = "/api/v2"

  attr_reader :client, :profile

  def initialize(client)
    @client = client
    @profile = client.profile
  end

  def get(path)
    I2r::Response.new RestClient.get(url(path), headers)
  end

  def post(path, payload)
  end

  def delete(path)
  end

  def put(path)
  end

  def patch(path)
  end

  private

  def url(path)
    profile.url + [VSN_PREFIX, path].join("/").gsub("//", "/")
  end

  def token
    profile.token
  end

  def headers
    {"Authorization" => "Token #{token}"}
  end

end
