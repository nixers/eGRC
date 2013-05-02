class CreateRcrievals < ActiveRecord::Migration
  def change
    create_table :rcrievals do |t|
      t.string :reference
      t.string :description
      t.string :category
      t.string :exp_for_eval
      t.string :exp_ans_type

      t.timestamps
    end
  end
end
