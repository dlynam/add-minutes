class Hour 

  attr_accessor :val, :part_of_day

  def initialize(hour, part_of_day)
    @val = hour
    @part_of_day = part_of_day
    convert_to_army_time
  end

  def convert_to_army_time
    if part_of_day == "PM"
      self.val += 12
    elsif val == 12
      self.val = 0
    end
  end

  def add(hrs)
    hr_total = val + (hrs % 24)
    if hr_total == 24
      self.val = 12
    else
      self.val = hr_total < 24 ? hr_total : hr_total - 24
    end
  end

  def output_val
    new_val = val
    if val == 0
      12
    else
      val > 12 ? val - 12 : val
    end
  end

  def output_part_of_day
    val > 12 ? "PM" : "AM"
  end

end
