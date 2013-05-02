class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :new

      t.timestamps
    end
  end
end
