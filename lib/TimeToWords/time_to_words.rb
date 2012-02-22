class TimeToWords
  def initialize(hours, minutes)
    @hours = Integer(hours)
    @minutes = Integer(minutes)
  end

  def convert()
    convertToWords()
  end

  private
  def convertToWords()

    if @minutes == 0
      # exact hour
      case @hours
        when 0
          "It's midnight."
        when 12
          "It's noon."
        else
          "It's #{ @hours } o'clock."
      end

    else
      "It's #{ @hours }:#{ @minutes }."
    end
  end
end