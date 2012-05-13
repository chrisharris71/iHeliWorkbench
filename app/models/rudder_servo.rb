class RudderServo < ActiveRecord::Base
  attr_accessible :max_speed, :max_torque, :mfg_id, :part_number, :size
end
