class ConvertController < ApplicationController
  def time
  end

  def gettime
    flash[:notice] = "notice"
    flash[:error] = "error"
    redirect_to(:root)
  end
end
