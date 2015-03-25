class RemovePriceColumnFromProperties < ActiveRecord::Migration
  def change
    remove_column :properties, :price
  end
end
