class Receiver < ActiveRecord::Base
  		attr_accessible :channels, :has_fbl_unit, :has_gov, :has_volt_reg, :manufacturer_id, :part_number, :size_id
	belongs_to :manufacturer
end
