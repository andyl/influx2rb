class I2r::Response

  require 'json'

  attr_reader :code, :cookies, :headers, :body

  def initialize(response)
    @code    = response.code
    @cookies = response.cookies
    @headers = response.headers
    @body    = response.body
  end

  def json
    body
  end

  def to_h
    JSON.parse(json)
  end

  def to_struct
    JSON.parse(json, object_class: OpenStruct)
  end
end
