class ConvertController < ApplicationController
  def time
  end

  def gettime
    begin
      @time_string = TimeToWords.new( params[:time] )
      flash[:notice] = @time_string.convert

    rescue Exception=>e
      flash[:error] = "Error: #{ e.message }."
    end
    redirect_to(:root)
  end
end
