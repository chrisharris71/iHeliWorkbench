class CreateSpeedControls < ActiveRecord::Migration
  def change
    create_table :speed_controls do |t|
      t.string :part_number
      t.integer :amp_rating
      t.string :size
      t.integer :manufacturer_id

      t.timestamps
    end
  end
end
