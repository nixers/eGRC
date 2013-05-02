class CreateAinits < ActiveRecord::Migration
  def change
    create_table :ainits do |t|
      t.string :Refernce
      t.string :Origin
      t.string :Topic
      t.string :Standard
      t.string :Status
      t.string :Compliance
      t.string :Context
      t.string :Objective
      t.string :Scope
      t.string :Deliverables

      t.timestamps
    end
  end
end
