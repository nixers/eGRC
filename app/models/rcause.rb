class Rcause < ActiveRecord::Base
  attr_accessible :description, :horizon_end_date, :horizon_start_date, :likelihood, :occurence_count, :period, :probability, :reference, :title
end
