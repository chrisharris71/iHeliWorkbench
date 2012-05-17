class Manufacturer < ActiveRecord::Base
  attr_accessible :name
  has_many :heli_kits
  has_many :main_blades
  has_many :elec_motors
  has_many :engines
  has_many :fbl_units
  has_many :throttle_servos
  has_many :rudder_servos
  has_many :cyclic_servos
  has_many :rudder_gyros
  has_many :exhausts
  has_many :speed_controls
  has_many :tail_blades
  has_many :governors
  has_many :receivers
  has_many :paddles
end
