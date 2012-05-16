class CreateTailBlades < ActiveRecord::Migration
  def change
    create_table :tail_blades do |t|
      t.string :part_number
      t.integer :blade_length
      t.string :size
      t.integer :manufacturer_id

      t.timestamps
    end
  end
end
