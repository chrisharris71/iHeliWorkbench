class ChangeFieldsInProjectDb < ActiveRecord::Migration
  def up
#   	remove_column :projects, :type
  	add_column :projects, :heli_kit, :string
  	add_column :projects, :power, :string
  	add_column :projects, :type, :string
  	add_column :projects, :elec_motor, :string
  	add_column :projects, :engine, :string
  	add_column :projects, :exhaust, :string
  	add_column :projects, :speed_control, :string
  	add_column :projects, :cyclic_servo, :string
  	add_column :projects, :rudder_servo, :string
  	add_column :projects, :throttle_servo, :string
  	add_column :projects, :rudder_gyro, :string
  	add_column :projects, :fbl_unit, :string
  	add_column :projects, :receiver, :string
  	add_column :projects, :governor, :string
  	add_column :projects, :main_blade, :string
  	add_column :projects, :tail_blade, :string
  	add_column :projects, :paddle, :string
  end

  def down
  end
end
