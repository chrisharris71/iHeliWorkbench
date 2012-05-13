class CreateThrottleServos < ActiveRecord::Migration
  def change
    create_table :throttle_servos do |t|
      t.string :part_number
      t.integer :max_torque
      t.integer :max_speed
      t.string :size
      t.integer :mfg_id

      t.timestamps
    end
  end
end
