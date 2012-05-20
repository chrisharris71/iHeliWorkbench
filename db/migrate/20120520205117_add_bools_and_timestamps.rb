class AddBoolsAndTimestamps < ActiveRecord::Migration
  def up
  
  add_timestamps(:users)
  
  end

  def down
  end
end
