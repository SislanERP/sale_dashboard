class AddColumnToDestination < ActiveRecord::Migration
  def change
    add_column :destinations, :cod, :string
    add_column :destinations, :cod_iso, :string
    add_column :destinations, :continent, :string
    add_column :destinations, :region, :string
  end
end
