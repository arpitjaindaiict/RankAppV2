class Master < ActiveRecord::Base
	attr_accessible :e_name, :task, :startdate, :enddate, 
			:points, :comment

	validates :e_name, :presence => true
	validates :startdate, :presence => true
	validates :enddate, :presence => true
#	validates :points, :presence => true
	validates_numericality_of :points, :only_integer => true, :message => "can only be whole number and can't be blank."
	validates :task, :presence => true
	
end
