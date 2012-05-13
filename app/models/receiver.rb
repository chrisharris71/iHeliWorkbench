class Receiver < ActiveRecord::Base
  attr_accessible :channels, :has_fbl_unit, :has_gov, :has_volt_reg, :mfg_id, :part_number, :size
end
