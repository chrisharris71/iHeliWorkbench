class AddManufacturerForeignKeys < ActiveRecord::Migration
  def up
  	add_index :heli_kits, :manufacturer_id
  end

  def down
  	remove_index :heli_kits, :manufacturer_id
  end
end
