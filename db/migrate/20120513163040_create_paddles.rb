class CreatePaddles < ActiveRecord::Migration
  def change
    create_table :paddles do |t|
      t.string :part_number
      t.integer :paddle_length
      t.string :size
      t.integer :mfg_id

      t.timestamps
    end
  end
end
