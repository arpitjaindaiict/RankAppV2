class HomeController < ApplicationController
  def index
	  m = Time.now.month.to_s
	  y = Time.now.year.to_s
	  d = y+"-"+m+"-"+"01"
	   
	  x1 = Master.select("e_name as name, sum(points) as points").where("enddate >= ? ", d).group("e_name")
	   x = x1.order("points desc")
	   
	@y = x.all
	
   end

end
