class Engine < ActiveRecord::Base
  attr_accessible :mfg_id, :part_number, :size
end
