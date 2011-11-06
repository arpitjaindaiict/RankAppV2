class GrandtotalController < ApplicationController
  def index

	
      a1= Master.select("e_name as name, sum(points) as points").group("e_name")
      a = a1.order("points DESC")
      @b = a.all
  end

end
