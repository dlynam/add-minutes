class MyTime

  attr_accessor :hour, :minute

  def initialize(input_str)
    hour, minute, time_of_day = parse(input_str)
    @hour = Hour.new(hour, time_of_day)
    @minute = Minute.new(minute)
  end

  def self.add_minutes(input_time, mins_to_add)
    t = MyTime.new(input_time)
    t.minute.add(mins_to_add, t.hour)
    t.to_s
  end

  def to_s
    puts "#{hour.output_val}:#{minute.to_s} #{hour.output_part_of_day}"
  end

  def parse(input_str)
    time_array = input_str.split(" ")
    time_string_array = time_array[0].split(":")
    [time_string_array[0].to_i, time_string_array[1].to_i, time_array[1]]
  end

end
