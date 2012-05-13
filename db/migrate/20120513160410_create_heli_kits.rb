class CreateHeliKits < ActiveRecord::Migration
  def change
    create_table :heli_kits do |t|
      t.string :kit_name
      t.string :part_number
      t.string :size
      t.string :power
      t.integer :mfg_id

      t.timestamps
    end
  end
end
