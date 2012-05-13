class CreateSpeedControls < ActiveRecord::Migration
  def change
    create_table :speed_controls do |t|
      t.string :part_number
      t.integer :amps
      t.string :size
      t.integer :mfg_id

      t.timestamps
    end
  end
end
