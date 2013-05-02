class Rinit < ActiveRecord::Base
  attr_accessible :category, :description, :expiration_date, :forced_review, :likelihood, :reference, :review_period, :standard, :title
end
