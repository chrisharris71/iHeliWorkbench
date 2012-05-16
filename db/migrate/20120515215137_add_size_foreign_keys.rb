class AddSizeForeignKeys < ActiveRecord::Migration
  def self.up
  	add_column :heli_kits, :size_id, :integer
  	add_column :elec_motors, :size_id, :integer
  	add_column :engines, :size_id, :integer
  	add_column :exhausts, :size_id, :integer
  	add_column :speed_controls, :size_id, :integer
  	add_column :cyclic_servos, :size_id, :integer
  	add_column :rudder_servos, :size_id, :integer
  	add_column :throttle_servos, :size_id, :integer
  	add_column :rudder_gyros, :size_id, :integer
  	add_column :fbl_units, :size_id, :integer
  	add_column :receivers, :size_id, :integer
  	add_column :governors, :size_id, :integer
  	add_column :main_blades, :size_id, :integer
  	add_column :tail_blades, :size_id, :integer
  	add_column :paddles, :size_id, :integer  	
  end

  def self.down
  	remove_column :heli_kits, :size_id, :integer
  	remove_column :elec_motors, :size_id, :integer
  	remove_column :engines, :size_id, :integer
  	remove_column :exhausts, :size_id, :integer
  	remove_column :speed_controls, :size_id, :integer
  	remove_column :cyclic_servos, :size_id, :integer
  	remove_column :rudder_servos, :size_id, :integer
  	remove_column :throttle_servos, :size_id, :integer
  	remove_column :rudder_gyros, :size_id, :integer
  	remove_column :fbl_units, :size_id, :integer
  	remove_column :receivers, :size_id, :integer
  	remove_column :governors, :size_id, :integer
  	remove_column :main_blades, :size_id, :integer
  	remove_column :tail_blades, :size_id, :integer
  	remove_column :paddles, :size_id, :integer
  end
end
