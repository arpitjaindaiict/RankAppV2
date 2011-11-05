class Master < ActiveRecord::Base
	attr_accessible :e_name, :task, :startdate, :enddate, 
			:points, :comment

	validates :e_name, :presence => true
	validates :startdate, :presence => true
	validates :enddate, :presence => true
	validates :points, :presence => true
	validates :task, :presence => true
	
end