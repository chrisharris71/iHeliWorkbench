class SpeedControl < ActiveRecord::Base
  attr_accessible :amp_rating, :manufacturer_id, :part_number, :size_id
	belongs_to :manufacturer
end
