class HeliKit < ActiveRecord::Base
  attr_accessible :manufacturer_id, :name, :part_number, :power, :size
  belongs_to :manufacturer
end
