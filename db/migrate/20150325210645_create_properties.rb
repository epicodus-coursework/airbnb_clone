class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :price, :float
      t.column :user_id, :integer

      t.timestamp
    end
  end
end
