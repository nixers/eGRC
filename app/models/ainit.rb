class Ainit < ActiveRecord::Base
  attr_accessible :Compliance, :Context, :Deliverables, :Objective, :Origin, :Refernce, :Scope, :Standard, :Status, :Topic
 has_one :areport
 has_many :areco
 has_many :aactio


end
