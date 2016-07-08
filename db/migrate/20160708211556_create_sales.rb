class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :number_doc
      t.integer :sale_note
      t.float :quantity
      t.string :um
      t.float :price
      t.string :sale_clause
      t.date :date_doc
      t.references :type_doc, index: true, foreign_key: true
      t.references :destination, index: true, foreign_key: true
      t.references :broker, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.references :client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
