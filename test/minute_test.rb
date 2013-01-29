require "test/unit"
require File.dirname(__FILE__) + '/../lib/minute'

class TestMinute < Test::Unit::TestCase

	def test_initialize
		assert_equal(4, Minute.new(4).val)
	end

	def test_add
		h = Hour.new(2, "AM")
		m = Minute.new(25)
		m.add(5, h)
		assert_equal(30, m.val)
	end

end
