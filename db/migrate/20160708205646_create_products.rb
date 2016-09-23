class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :cod
      t.integer :cond_long
      t.string :name
      t.references :line_product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
