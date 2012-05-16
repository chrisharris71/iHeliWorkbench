class Project < ActiveRecord::Base
  attr_accessible :user_id, :user_name, :type, :engine, :power, :main_blade, :heli_kit, :exhaust, :elec_motor, :speed_control, :cyclic_servo, :rudder_servo, :throttle_servo, :rudder_gyro, :fbl_unit, :governor, :tail_blade, :paddle, :receiver
  
  belongs_to :user
  has_one :engine, :dependent => :destroy
  has_one :main_blade, :dependent => :destroy
  has_one :heli_kit, :dependent => :destroy
  has_one :exhaust, :dependent => :destroy
  has_one :elec_motor, :dependent => :destroy
  has_one :speed_control, :dependent => :destroy
  has_one :cyclic_servo, :dependent => :destroy
  has_one :rudder_servo, :dependent => :destroy
  has_one :throttle_servo, :dependent => :destroy
  has_one :rudder_gyro, :dependent => :destroy
  has_one :fbl_unit, :dependent => :destroy
  has_one :governor, :dependent => :destroy
  has_one :tail_blade, :dependent => :destroy
  has_one :paddle, :dependent => :destroy
  has_one :receiver, :dependent => :destroy
end
