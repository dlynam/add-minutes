class Minute 

  attr_accessor :val

  def initialize(minute)
    @val = minute
  end

  def add(mins, hour_obj)
    if val + mins < 60
      self.val += mins
    else
      @hrs_to_add = mins/60
      self.val += mins % 60
      handle_excess_minutes if val >= 60
      hour_obj.add(@hrs_to_add)
    end
  end

  def handle_excess_minutes
    self.val = val % 60
    @hrs_to_add += 1
  end

  def to_s
    val < 10 ? "0#{val}" : val.to_s
  end

end
