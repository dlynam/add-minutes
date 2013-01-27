require 'spec_helper'
describe Hour do

  before(:each) do
    @hour = Hour.new(3, "PM")
  end

  describe "#new" do
    it "takes one parameter and returns a Minute object" do
      @hour.should be_an_instance_of Hour
    end
  end

  describe "#val" do
    it "returns the right minute val" do
      @hour.val.should eql 15
    end
  end

end
