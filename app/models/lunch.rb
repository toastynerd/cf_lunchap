class Lunch < ActiveRecord::Base
	validates :what_i_ate, :presence => true
	validates :day_of_the_week, :presence => true
	
	attr_accessible :day_of_the_week, :what_i_ate
end
