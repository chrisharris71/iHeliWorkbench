class Governor < ActiveRecord::Base
  attr_accessible :manufacturer_id, :part_number, :size_id
	belongs_to :manufacturer
end
