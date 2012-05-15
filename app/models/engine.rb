class Engine < ActiveRecord::Base
  attr_accessible :manufacturer_id, :part_number, :size
end
