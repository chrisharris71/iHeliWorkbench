class HeliKit < ActiveRecord::Base
  attr_accessible :manufacturer_id, :part_number, :size_id
  belongs_to :manufacturer
  # has_one :project
end
