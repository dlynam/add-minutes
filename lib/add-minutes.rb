class Time
  attr_accessor :minute, :hour

  def initialize(input_time)
    input_time_array = input_time.split(" ")
    input_time_string = input_time_array[0]
    time_string_array = input_time_string.split(":")
    @part_of_day = input_time_array[1]
    @hour = time_string_array[0].to_i
    @minute = time_string_array[1].to_i
    #check for valid data
  end

  def self.add_minutes(input_time, mins_to_add)
    t = Time.new(input_time)
    t.add_time_in_minutes(mins_to_add)
    t.to_s
  end

  def add_time_in_minutes(mins)
    if @minute + mins < 60
      @minute += mins
    else

    end
  end

  def convert_to_army_time
    if @part_of_day == "PM"
      @hour += 12
    elsif @hour == 12
      @hour = 0
    end
  end

  def convert_from_army_time
    if @hour > 12
      @hour -= 12 
    elsif @hour == 0
      @hour = 12
   end
  end

  def to_s
    @part_of_day = @hour > 12 ? "PM" : "AM"
    convert_from_army_time
    puts "#{@hour}:#{@minute} #{@part_of_day}"
  end

end
