class AddProjectNameFieldToProjects < ActiveRecord::Migration
  def up  
  	
  	add_column :projects, :name, :string
  
  end
end
