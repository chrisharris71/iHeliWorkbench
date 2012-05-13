class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :mfg_name
      t.integer :mfg_id

      t.timestamps
    end
  end
end
