class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :user
      t.string :email

      t.timestamps
    end
  end
end
