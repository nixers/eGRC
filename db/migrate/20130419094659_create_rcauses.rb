class CreateRcauses < ActiveRecord::Migration
  def change
    create_table :rcauses do |t|
      t.string :title
      t.string :reference
      t.string :description
      t.integer :period
      t.decimal :likelihood
      t.decimal :probability
      t.integer :occurence_count
      t.string :horizon_start_date
      t.string :horizon_end_date

      t.timestamps
    end
  end
end
