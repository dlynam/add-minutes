require "test/unit"
require File.dirname(__FILE__) + '/../lib/my_time'
require File.dirname(__FILE__) + '/../lib/minute'
require File.dirname(__FILE__) + '/../lib/hour'

class TestMyTime < Test::Unit::TestCase

	def test_initialize
		t = MyTime.new("9:13 AM")
		assert_equal(9, t.hour.val)	
		assert_equal(13, t.minute.val)
	end

end
