class HeliKit < ActiveRecord::Base
  attr_accessible :kit_name, :mfg_id, :part_number, :power, :size
end
