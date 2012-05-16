class Exhaust < ActiveRecord::Base
  attr_accessible :manufacturer_id, :part_number, :size_id, :works_with
	belongs_to :manufacturer
end
