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
      expect(obj.host).to_not be_nil
      expect(obj.user).to_not be_nil
      expect(obj.pass).to_not be_nil
    end
  end

end
