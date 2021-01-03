describe I2r::Interface do

  let(:klas) { I2r::Interface }
  let(:obj)  { klas.new }

  context "object creation" do

    it "has a defined class-name" do
      expect(klas).to_not be_nil
    end

    it "creates an object" do
      expect(obj).to_not be_nil
    end
  end

end
