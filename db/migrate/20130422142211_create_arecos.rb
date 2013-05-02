class CreateArecos < ActiveRecord::Migration
  def change
    create_table :arecos do |t|
      t.string :Title
      t.string :Atitle
      t.string :Dtitle
      t.string :Ctitle
      t.string :status
      t.string :auditor
      t.string :reference
      t.string :primary
      t.string :secondary
      t.string :compliance
      t.string :verification
      t.string :priority
      t.string :severity
      t.date :target
      t.date :closed
      t.string :auditee
      t.date :atartget
      t.string :apriority
      t.string :aseverity
      t.string :dependent
      t.string :duplicate
      t.string :blocked
      t.string :refer
      t.string :org
      t.string :level
      t.string :ctarget
      t.string :compliancetype
      t.string :kind
      t.string :ddtitle
      t.string :dreference
      t.string :description
      t.string :verified
      t.string :confidential
      t.string :dtype

      t.timestamps
    end
  end
end
