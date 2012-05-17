class Project < ActiveRecord::Base
  attr_accessible :cyclic_servo_id, :elec_motor_id, :engine_id, :exhaust_id, :fbl_unit_id, :governor_id, :heli_kit_id, :main_blade_id, :paddle_id, :receiver_id, :rudder_gyro_id, :rudder_servo_id, :speed_control_id, :tail_blade_id, :throttle_servo_id, :user_id, :electric, :flybarless
	
	belongs_to :user
#   <-- All the components are listed here -->
  belongs_to :engine
  belongs_to :main_blade
  belongs_to :heli_kit
  belongs_to :exhaust
  belongs_to :elec_motor
  belongs_to :speed_control
  belongs_to :cyclic_servo
  belongs_to :rudder_servo
  belongs_to :throttle_servo
  belongs_to :rudder_gyro
  belongs_to :fbl_unit
  belongs_to :governor
  belongs_to :tail_blade
  belongs_to :paddle
  belongs_to :receiver
 	
 	def heli_kit_name
 		if heli_kit
 			heli_kit.name
 			else
 			""
 		end
 	end
 	
end
