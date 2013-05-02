class Revent < ActiveRecord::Base
  attr_accessible :category, :description, :likelihood, :period, :probability, :reference, :title
end
