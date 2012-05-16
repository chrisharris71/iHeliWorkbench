class Paddle < ActiveRecord::Base
  attr_accessible :manufacturer_id, :paddle_length, :part_number, :size_id
	belongs_to :manufacturer
end
