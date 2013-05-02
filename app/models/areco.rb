class Areco < ActiveRecord::Base
  attr_accessible :Atitle, :Ctitle, :Dtitle, :Title, :apriority, :aseverity, :atartget,  :auditee, :auditor,  :blocked, :closed,:compliance,:confidential,:ctarget,:ddtitle,:dependent,:description,:dreference,:dtype,:duplicate,:kind, :level,:org, :primary,:priority,:refer,:reference,:secondary,:severity,:status,:target,:compliancetype,:verification,:verified
  belongs_to :ainit
  belongs_to :areport
  has_many :aactio 

  # @areco = Areco.create(:ainit_id => @ainit)

  # @areco = Areco.where(:ainit_id => @ainit)
  # @areco.each do |areco|
  # 	areco.destory
  # end
  # @ainit.destory

end
