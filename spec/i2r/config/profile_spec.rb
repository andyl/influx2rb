require 'spec_helper'

describe I2r::Config::Profile do

  let(:klas) { I2r::Config::Profile }
  let(:obj)  { klas.new }

  context "basic object creation" do

    it "has a constant klasname" do
      expect(klas).to_not be_nil
    end

    it "creates an object" do
      expect(obj).to_not be_nil
    end

  end

  context "object attributes" do

    it "has default field values" do
      expect(obj.url).to_not be_nil
      expect(obj.org).to_not be_nil
      expect(obj.token).to_not be_nil
    end

    it "accepts arguments" do
      args = {"url" => "asdf", "org" => "qwer", "token" => "zxcv"}
      myobj = klas.new(args)
      expect(myobj.url).to eq(args["url"])
      expect(myobj.org).to eq(args["org"])
      expect(myobj.token).to eq(args["token"])
    end

    it "converts symbol keys to string keys" do
      args = {url: "asdf", org: "qwer", token: "zxcv"}
      myobj = klas.new(args)
      expect(myobj.url).to eq(args[:url])
      expect(myobj.org).to eq(args[:org])
      expect(myobj.token).to eq(args[:token])
    end

  end

end
