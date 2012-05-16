class HeliKit < ActiveRecord::Base
  attr_accessible :manufacturer_id, :name, :part_number, :power, :size_id
  belongs_to :manufacturer
  belongs_to :size
end
