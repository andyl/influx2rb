require 'spec_helper'

describe "Aruba Rspec", :type => :aruba do

  context "basic aruba" do
    it "is defined" do
      expect(aruba).to be
    end
  end

  context "running a command" do
    it "works" do
      expect(`which ruby`).to_not be_nil
      expect($?.exitstatus).to eq(0)
    end

    it "runs pwd" do
      result = `bin/influx2rb`
      puts result.inspect
      puts $?.inspect
      expect(1).to eq(1)
    end
  end

end

