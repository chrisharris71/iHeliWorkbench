class CreateElecMotors < ActiveRecord::Migration
  def change
    create_table :elec_motors do |t|
      t.string :part_number
      t.string :size
      t.integer :mfg_id

      t.timestamps
    end
  end
end
