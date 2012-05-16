class CreateReceivers < ActiveRecord::Migration
  def change
    create_table :receivers do |t|
      t.string :part_number
      t.string :size
      t.integer :channels
      t.boolean :has_gov
      t.boolean :has_fbl_unit
      t.boolean :has_volt_reg
      t.integer :manufacturer_id

      t.timestamps
    end
  end
end
