class CreateGovernors < ActiveRecord::Migration
  def change
    create_table :governors do |t|
      t.string :part_number
      t.string :size
      t.integer :manufacturer_id

      t.timestamps
    end
  end
end
