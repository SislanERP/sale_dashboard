class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :cod
      t.string :name
      t.string :continent
      t.string :region
      t.string :cod_iso

      t.timestamps null: false
    end
  end
end
