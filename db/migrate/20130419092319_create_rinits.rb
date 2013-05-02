class CreateRinits < ActiveRecord::Migration
  def change
    create_table :rinits do |t|
      t.string :title
      t.string :reference
      t.string :description
      t.string :category
      t.integer :review_period
      t.string :forced_review
      t.string :likelihood
      t.string :standard
      t.string :expiration_date

      t.timestamps
    end
  end
end
