class MainBlade < ActiveRecord::Base
  attr_accessible :blade_length, :manufacturer_id, :part_number, :size_id
	belongs_to :manufacturer
end
