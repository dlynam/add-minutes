require 'spec_helper'
describe Time do

  context "new Time obj" do
    before(:each) do
      @time = Time.new("2:10 PM")
    end
    describe "#new" do	
      it "takes one parameter and returns a Time object" do
       @time.should be_an_instance_of Time
      end
    end
  end

  describe ".add_minutes" do
    it "outputs minutes added to a time string" do
      Time.add_minutes("9:13 AM", 10).should eql "9:23 AM"
    end
  end

end
