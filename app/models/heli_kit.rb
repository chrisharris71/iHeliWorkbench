class HeliKit < ActiveRecord::Base
  attr_accessible :manufacturer_id, :name, :part_number, :size_id
  belongs_to :manufacturer
  belongs_to :project
end
