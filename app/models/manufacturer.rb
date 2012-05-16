class Manufacturer < ActiveRecord::Base
  attr_accessible :name
  has_many :heli_kits
  has_many :main_blades
  has_many :elec_motors
  has_many :engines
end
