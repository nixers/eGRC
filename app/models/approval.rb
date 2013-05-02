class Approval < ActiveRecord::Base
  attr_accessible :name, :responsible, :status, :string, :version
end
