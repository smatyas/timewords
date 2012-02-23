class TimeToWords

  # @param timeString [String]
  def initialize(timeString)
    @time = DateTime.strptime(timeString, "%H:%M").to_time
    @hours = Integer(@time.strftime("%H"), 10)
    @hours_orig = @hours
    @minutes = Integer(@time.strftime("%M"), 10)
    @time_part = ""
    @day_part = ""
    @minutes_postfix = " past "
  end

  # @return [String]
  def convert()
    if @minutes > 0
      if @minutes > 30
        @hours += 1
        @hours = @hours%24
        @minutes = 60-@minutes
        @minutes_postfix = " to "
      end
      @time_part = number_to_word(@minutes) + @minutes_postfix
    end

    case @hours
      when 0
        @time_part += "midnight."

      when 12
        @time_part += "noon."

      else
        @time_part += "#{ number_to_word(@hours%12) }"
        if @minutes == 0
          @time_part += " o'clock"
        end

        case @hours_orig
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

    # assemble the answer
    "It's #{ @time_part }#{ @day_part }"
  end


  # @param n [Integer]
  # @return [String]
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
      when 12
        "twelve"
      when 13
        "thirteen"
      when 14
        "fourteen"
      when 15
        "quarter"
      when 16
        "sixteen"
      when 17
        "seventeen"
      when 18
        "eighteen"
      when 19
        "nineteen"
      when 20
        "twenty"
      when 21
        "twenty-one"
      when 22
        "twenty-two"
      when 23
        "twenty-three"
      when 24
        "twenty-four"
      when 25
        "twenty-five"
      when 26
        "twenty-six"
      when 27
        "twenty-seven"
      when 28
        "twenty-eight"
      when 29
        "twenty-nine"
      when 30
        "half"
      else
        n
    end
  end
end