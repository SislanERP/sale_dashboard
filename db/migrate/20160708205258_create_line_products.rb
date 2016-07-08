class CreateLineProducts < ActiveRecord::Migration
  def change
    create_table :line_products do |t|
      t.string :name
      t.references :type_product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
