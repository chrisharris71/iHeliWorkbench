class CreateExhausts < ActiveRecord::Migration
  def change
    create_table :exhausts do |t|
      t.string :part_number
      t.string :size
      t.string :works_with
      t.integer :manufacturer_id

      t.timestamps
    end
  end
end
