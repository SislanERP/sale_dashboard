class CreateBrokers < ActiveRecord::Migration
  def change
    create_table :brokers do |t|
      t.string :name
      t.integer :code

      t.timestamps null: false
    end
  end
end
