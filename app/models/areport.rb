class Areport < ActiveRecord::Base
  attr_accessible :Actions, :Duedate, :Recommendations, :Source, :Status, :Summary, :Title
  belongs_to :ainit
  # has_many :areco
  # has_many :aactio

	# @Areport = Areport.create(:areport_date => Time.now, :ainit_id => @ainit.id)  

	# @areport = Areport.where(:ainit_id => @ainit.id)	
	# @areport.each do |areport|
	# 	report.destory
	# end 
	# @ainit.destory
end
