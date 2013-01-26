class Time
  attr_accessor :minute, :hour

  def initialize(input_time)
    input_time_array = input_time.split(" ")
    input_time_string = input_time_array[0]
    time_string_array = input_time_string.split(":")
    @part_of_day = input_time_array[1]
    @hour = time_string_array[0].to_i
    @minute = time_string_array[1].to_i
    convert_to_army_time
    #check for valid data
  end

  def self.add_minutes(input_time, mins_to_add)
    t = Time.new(input_time)
    t.add_time_in_minutes(mins_to_add)
    t.to_s
  end

  def add_time_in_minutes(total_mins)
    if @minute + total_mins < 60
      @minute += total_mins
    else
      @hrs_to_add = total_mins/60
      @minute += total_mins % 60
      handle_excess_minutes if @minute >= 60
      if @hour + @hrs_to_add < 24
        @hour += @hrs_to_add
      else
        more_than_24
      end
    end
  end

  def handle_excess_minutes
    @minute = @minute % 60
    @hrs_to_add += 1
  end

  def more_than_24
    @hrs_to_add = @hrs_to_add % 24
    hr_total = @hour + @hrs_to_add
    if hr_total < 24
      @hour = hr_total
    elsif hr_total == 24
      @hour = 12
    else
      @hour = hr_total - 24
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
    @part_of_day = @hour > 12 ? "PM" : "AM"
    if @hour > 12
      @hour -= 12 
    elsif @hour == 0
      @hour = 12
   end
  end

  def to_s
    convert_from_army_time
    puts "#{@hour}:#{format_mins} #{@part_of_day}"
  end

  def format_mins
    @minute < 10 ? "0#{@minute}" : @minute
  end

end
