class CreateAreports < ActiveRecord::Migration
  def change
    create_table :areports do |t|
      t.string :Title
      t.string :Summary
      t.string :Source
      t.string :Duedate
      t.string :Status
      t.integer :Recommendations
      t.integer :Actions

      t.timestamps
    end
  end
end
