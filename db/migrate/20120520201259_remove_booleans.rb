class RemoveBooleans < ActiveRecord::Migration
  def up
 
 		remove_column :projects, :electric, :flybarless
  	remove_column :receivers, :has_gov, :has_volt_reg, :has_fbl_unit
		remove_column :users, :admin
 
  end

  def down
  end
end
