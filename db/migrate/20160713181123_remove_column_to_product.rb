class RemoveColumnToProduct < ActiveRecord::Migration
  def change
    remove_reference :products, :type_product, index: true, foreign_key: true
  end
end
