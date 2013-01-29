require "test/unit"
require File.dirname(__FILE__) + '/../lib/minute'
require File.dirname(__FILE__) + '/../lib/hour'
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

	def test_to_s
    m = Minute.new(23)
		assert_equal("23", m.to_s)
		m = Minute.new(5)
		assert_equal("05", m.to_s)
	end

end
