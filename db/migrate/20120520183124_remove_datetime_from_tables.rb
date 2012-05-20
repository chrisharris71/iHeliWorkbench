class RemoveDatetimeFromTables < ActiveRecord::Migration
  def up
  
  				remove_column :admin_users, :current_sign_in_at, :last_sign_in_at, :reset_password_sent_at, :remember_created_at

# These that follow are for the booleans if they don't transfer over
# 		remove_column :projects, :electric, :flybarless
#   	remove_column :receivers, :has_gov, :has_volt_reg, :has_fbl_unit
# 		remove_column :users, :admin
  end

  def down
  end
end
