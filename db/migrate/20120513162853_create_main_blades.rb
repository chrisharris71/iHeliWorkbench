class CreateMainBlades < ActiveRecord::Migration
  def change
    create_table :main_blades do |t|
      t.string :part_number
      t.integer :blade_length
      t.string :size
      t.integer :mfg_id

      t.timestamps
    end
  end
end
