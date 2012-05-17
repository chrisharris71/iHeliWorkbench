class AddNamefieldsToModels < ActiveRecord::Migration
  def change
  	add_column :elec_motors, :name, :string
  	add_column :engines, :name, :string
  	add_column :exhausts, :name, :string
  	add_column :speed_controls, :name, :string
  	add_column :cyclic_servos, :name, :string
  	add_column :rudder_servos, :name, :string
  	add_column :throttle_servos, :name, :string
  	add_column :rudder_gyros, :name, :string
  	add_column :fbl_units, :name, :string
  	add_column :receivers, :name, :string
  	add_column :governors, :name, :string
  	add_column :main_blades, :name, :string
  	add_column :tail_blades, :name, :string
  	add_column :paddles, :name, :string  	
  end
end
