class TimeToWords

  def initialize(timeString)
    @time = DateTime.strptime(timeString, "%H:%M").to_time
    @hours = Integer(@time.strftime("%H"), 10)
    @minutes = Integer(@time.strftime("%M"), 10)
  end

  def convert()
    @need_day_part = true
    if @minutes == 0
      # exact hour
      case @hours
        when 0
          @time_part = "midnight."
          @need_day_part = false
        when 12
          @time_part = "noon."
          @need_day_part = false
        else
          @time_part = "#{ number_to_word(@hours%12) } o'clock"
      end

    else
      # other diff
      @time_part = "#{ @hours }:#{ @minutes }"
    end

    if @need_day_part
      case @hours
        when 6..11
          @day_part = " in the morning."
        when 12..17
          @day_part = " in the afternoon."
        when 18..20
          @day_part = " in the evening."
        when 21..23, 0..5
          @day_part = " at night."
      end
    end

    "It's #{ @time_part }#{ @day_part }"
  end

  private
  def number_to_word(n)
    case n
      when 1
        "one"
      when 2
        "two"
      when 3
        "three"
      when 4
        "four"
      when 5
        "five"
      when 6
        "six"
      when 7
        "seven"
      when 8
        "eight"
      when 9
        "nine"
      when 10
        "ten"
      when 11
        "eleven"
      else
        n
    end
  end
end