class CreateCyclicServos < ActiveRecord::Migration
  def change
    create_table :cyclic_servos do |t|
      t.string :part_number
      t.integer :max_torque
      t.integer :max_speed
      t.string :size
      t.integer :manufacturer_id

      t.timestamps
    end
  end
end
