class CreateTypeDocs < ActiveRecord::Migration
  def change
    create_table :type_docs do |t|
      t.integer :cod_sii
      t.string :name
      t.boolean :positive

      t.timestamps null: false
    end
  end
end
