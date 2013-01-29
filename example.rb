require File.dirname(__FILE__) + '/lib/my_time'
require File.dirname(__FILE__) + '/lib/hour'
require File.dirname(__FILE__) + '/lib/minute'

MyTime.add_minutes("9:13 AM", 10) #=> 9:23 AM
MyTime.add_minutes("2:10 PM", 70) #=> 3:20 PM
MyTime.add_minutes("11:10 PM", 80) #=> 12:30 AM
MyTime.add_minutes("11:10 PM", 50) #=> 12:00 AM
MyTime.add_minutes("1:10 PM", 52) #=> 2:02 PM
MyTime.add_minutes("1:30 PM", 52) #=> 2:22 PM
MyTime.add_minutes("1:30 PM", 149) #=> 3:59 PM
MyTime.add_minutes("1:30 PM", 2069) #=> 11:59 PM
MyTime.add_minutes("1:30 PM", 2070) #=> 12:00 PM
MyTime.add_minutes("1:30 PM", 2071) #=> 12:01 AM

