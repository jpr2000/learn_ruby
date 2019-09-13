require 'date'

class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    minutes = @seconds / 60
    @seconds -= minutes * 60
    hours = minutes / 60
    minutes -= hours * 60
    sprintf("%02d:%02d:%02d", hours, minutes, seconds)
  end
end
