class TailBlade < ActiveRecord::Base
  attr_accessible :blade_length, :manufacturer_id, :part_number, :size_id
	belongs_to :manufacturer
	belongs_to :project
end
