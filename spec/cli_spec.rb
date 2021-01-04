require 'spec_helper'

describe "CLI Executable", :type => :aruba do

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

    it "runs the binary" do
      `bin/influx2rb`
      expect($?.exitstatus).to eq(0)
    end
  end

end

