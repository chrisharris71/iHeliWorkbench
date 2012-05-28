class ChangeProjectColumnsToInclIds < ActiveRecord::Migration
  def change
    delete_table :projects
    create_table :projects do |t|
      t.integer :user_id
      t.boolean :electric
      t.boolean :flybarless
      t.string :heli_kit_id
      t.string :elec_motor_id
      t.string :engine_id
      t.string :exhaust_id
      t.string :speed_control_id
      t.string :cyclic_servo_id
      t.string :rudder_servo_id
      t.string :throttle_servo_id
      t.string :rudder_gyro_id
      t.string :fbl_unit_id
      t.string :receiver_id
      t.string :governor_id
      t.string :main_blade_id
      t.string :tail_blade_id
      t.string :paddle_id

      t.timestamps
    end
  end
end
