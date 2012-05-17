class Project < ActiveRecord::Base
  attr_accessible :cyclic_servo_id, :elec_motor_id, :engine_id, :exhaust_id, :fbl_unit_id, :governor_id, :heli_kit_id, :main_blade_id, :paddle_id, :receiver_id, :rudder_gyro_id, :rudder_servo_id, :speed_control_id, :tail_blade_id, :throttle_servo_id, :user_id, :electric, :flybarless, :heli_kit_attributes 

	belongs_to :user
#   <-- All the components are listed here -->
  has_one :engine
  has_one :main_blade
  has_one :heli_kit
  has_one :exhaust
  has_one :elec_motor
  has_one :speed_control
  has_one :cyclic_servo
  has_one :rudder_servo
  has_one :throttle_servo
  has_one :rudder_gyro
  has_one :fbl_unit
  has_one :governor
  has_one :tail_blade
  has_one :paddle
  has_one :receiver
 	
 	accepts_nested_attributes_for :heli_kit
 	
end
