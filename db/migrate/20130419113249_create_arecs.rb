class CreateArecs < ActiveRecord::Migration
  def change
    create_table :arecs do |t|

      t.timestamps
    end
  end
end
