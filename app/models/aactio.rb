class Aactio < ActiveRecord::Base
  attr_accessible :ClosedDate, :Descriptions, :DueDate, :ExternalReference, :Recommendations, :Refernce, :Title, :status
 belongs_to :ainit
 belongs_to :areport
 belongs_to :areco  
end
