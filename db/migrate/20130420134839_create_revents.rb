class CreateRevents < ActiveRecord::Migration
  def change
    create_table :revents do |t|
      t.string :title
      t.string :reference
      t.string :description
      t.string :category
      t.integer :period
      t.decimal :likelihood
      t.decimal :probability

      t.timestamps
    end
  end
end
