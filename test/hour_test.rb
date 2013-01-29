require "test/unit"
require File.dirname(__FILE__) + '/../lib/hour'

class TestHour < Test::Unit::TestCase
 
  def test_initialize
    assert_equal(16, Hour.new(4, "PM").val)
    assert_equal(4, Hour.new(4, "AM").val)
		assert_equal(0, Hour.new(12, "AM").val)
	end

	def test_add
		h = Hour.new(2, "AM")
		h.add(2)			
		assert_equal(4, h.val)
		h.add(24)
		assert_equal(4, h.val)
		h.add(12)
		assert_equal(16, h.val)
		assert_not_equal(17, h.val)
	end	

	def test_output_val
		h = Hour.new(3, "AM")
		assert_equal(3, h.output_val)
		h.add(14)
		assert_equal(5, h.output_val)
		assert_not_equal(6, h.output_val)
	end

	def test_output_part_of_day
		h = Hour.new(3, "AM")
		assert_equal(h.output_part_of_day, "AM")
		assert_not_equal(h.output_part_of_day, "PM")
	  h.add(12)	
		assert_equal(h.output_part_of_day, "PM")
	end

end
