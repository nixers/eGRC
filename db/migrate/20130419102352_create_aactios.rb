class CreateAactios < ActiveRecord::Migration
  def change
    create_table :aactios do |t|
      t.string :Recommendations
      t.string :Refernce
      t.string :Title
      t.string :Descriptions
      t.string :ExternalReference
      t.string :DueDate
      t.string :ClosedDate
      t.string :status

      t.timestamps
    end
  end
end
