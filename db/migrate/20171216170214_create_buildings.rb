class CreateBuildings < ActiveRecord::Migration[5.1]
  def change
    create_table :buildings do |t|
      t.string :name_building, null: false
      t.references :disposition, foreign_key: true, null: false, index: true

      t.timestamps
    end
  end
end
