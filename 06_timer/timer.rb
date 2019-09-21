class Timer
  attr_writer:seconds
  def initialize
    @timer = Time.new(Time.new.year)
  end

  def seconds
    @seconds.nil? ? @timer.sec : time_string
  end
  
  def time_string
    hours = (@seconds / 3600) < 10 ? "0#{(@seconds / 3600)}" : (@seconds / 3600)
    "#{hours}:#{(@timer + @seconds).strftime "%M:%S"}"
  end
end

# ///  "sprintf" Method Variant below /// #

class Timer
  attr_writer:seconds
  def initialize
    @timer = Time.new(Time.new.year)
  end

  def seconds
    @seconds.nil? ? @timer.sec : time_string
  end

  def padded(num)
    num < 10 ? sprintf("0%d", num) : sprintf("%d", num)
  end

  def time_string
    timer = @timer + @seconds
    hours = (@seconds / 3600)
    "#{padded(hours)}:#{padded(timer.min)}:#{padded(timer.sec)}"
  end
end