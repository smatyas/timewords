class ConvertController < ApplicationController
  def time
  end

  def gettime
    begin
      @time_string = TimeToWords.new( params[:time] )
      flash[:notice] = "#{ params[:time] } = #{ @time_string.convert }"

    rescue Exception=>e
      flash[:error] = "#{ params[:time] } = Error: #{ e.message }."
    end
    redirect_to(:root)
  end
end
