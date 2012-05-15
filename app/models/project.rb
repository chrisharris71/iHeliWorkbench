class Project < ActiveRecord::Base
  attr_accessible :user_id, :user_name
  belongs_to :user
end
