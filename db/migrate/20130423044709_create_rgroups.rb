class CreateRgroups < ActiveRecord::Migration
  def change
    create_table :rgroups do |t|
      t.string :group_name
      t.string :description

      t.timestamps
    end
  end
end
