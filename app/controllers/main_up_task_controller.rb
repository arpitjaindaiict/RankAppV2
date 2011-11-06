class MainUpTaskController < ApplicationController
  def index
	  x1 = UpcomingTask.select("*")
	   
	@y = x1.all
  end

end
