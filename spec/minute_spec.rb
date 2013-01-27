require 'spec_helper'
describe Minute do

  before(:each) do
    @minute = Minute.new(20)
  end

  describe "#new" do
    it "takes one parameter and returns a Minute object" do
      @minute.should be_an_instance_of Minute
    end
  end

  describe "#val" do
    it "returns the right minute val" do
      @minute.val.should eql 20
    end
  end

  describe "#add" do 
    it "adds minutes to the minute object" do
      @minute.
    end
  end

end

