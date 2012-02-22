class ConvertController < ApplicationController
  def time
  end

  def gettime
    begin
      @time = DateTime.strptime(params[:time], "%H:%M").to_time
      @time_string = TimeToWords.new(@time.strftime("%H"), @time.strftime("%M"))
      flash[:notice] = @time_string.convert
    rescue Exception=>e
      flash[:error] = e.message
    end
    redirect_to(:root)
  end
end
