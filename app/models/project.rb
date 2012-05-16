class Project < ActiveRecord::Base
  attr_accessible :cyclic_servo, :elec_motor, :engine, :exhaust, :fbl_unit, :governor, :heli_kit, :main_blade, :paddle, :power, :receiver, :rudder_gyro, :rudder_servo, :speed_control, :tail_blade, :throttle_servo, :type, :user_id

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
  has_one :power, :dependent => :destroy
  has_one :type, :dependent => :destroy

end
