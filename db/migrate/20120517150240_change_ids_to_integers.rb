class ChangeIdsToIntegers < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.boolean :electric
      t.boolean :flybarless
      t.integer :heli_kit_id
      t.integer :elec_motor_id
      t.integer :engine_id
      t.integer :exhaust_id
      t.integer :speed_control_id
      t.integer :cyclic_servo_id
      t.integer :rudder_servo_id
      t.integer :throttle_servo_id
      t.integer :rudder_gyro_id
      t.integer :fbl_unit_id
      t.integer :receiver_id
      t.integer :governor_id
      t.integer :main_blade_id
      t.integer :tail_blade_id
      t.integer :paddle_id

      t.timestamps
    end
  end
end

