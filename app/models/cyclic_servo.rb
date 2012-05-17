class CyclicServo < ActiveRecord::Base
  attr_accessible :manufacturer_id, :max_speed, :max_torque, :part_number, :size_id
  belongs_to :manufacturer
  belongs_to :project
end
