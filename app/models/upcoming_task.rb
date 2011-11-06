class UpcomingTask < ActiveRecord::Base
	attr_accessible :task, :TimeDuration

	validates :task, :presence => true
	validates :TimeDuration, :presence =>true

end
