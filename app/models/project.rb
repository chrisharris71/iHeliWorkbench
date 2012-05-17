class Project < ActiveRecord::Base
  attr_accessible :cyclic_servo_id, :elec_motor_id, :engine_id, :exhaust_id, :fbl_unit_id, :governor_id, :heli_kit_id, :main_blade_id, :paddle_id, :receiver_id, :rudder_gyro_id, :rudder_servo_id, :speed_control_id, :tail_blade_id, :throttle_servo_id, :user_id, :electric, :flybarless 

	belongs_to :user
#   <-- All the components are listed here -->
  has_many :engines
  has_many :main_blades
  has_many :heli_kits
  has_many :exhausts
  has_many :elec_motors
  has_many :speed_controls
  has_many :cyclic_servos
  has_many :rudder_servos
  has_many :throttle_servos
  has_many :rudder_gyros
  has_many :fbl_units
  has_many :governors
  has_many :tail_blades
  has_many :paddles
  has_many :receivers
 
end
