class TimeToWords

  def initialize(timeString)
    @time = DateTime.strptime(timeString, "%H:%M").to_time
    @hours = Integer(@time.strftime("%H"))
    @minutes = Integer(@time.strftime("%M"))
  end

  def convert()
    @need_day_part = true
    if @minutes == 0
      # exact hour
      case @hours
        when 0
          @time_part = "It's midnight."
          @need_day_part = false
        when 12
          @time_part = "It's noon."
          @need_day_part = false
        else
          @time_part = "It's #{ @hours } o'clock"
      end

    else
      # other diff
      @time_part = "It's #{ @hours }:#{ @minutes }"
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

    "#{ @time_part }#{ @day_part }"
  end
end