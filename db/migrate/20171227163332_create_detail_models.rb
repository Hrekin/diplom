class CreateDetailModels < ActiveRecord::Migration[5.1]
  def change
    create_table :detail_models do |t|
      t.string :name, null: false
      t.string :serial_number, null: false
      t.string :description, null: false
      t.date :produce_date, null: false
      t.string :manufacter, null: false
      t.string :properties, null: false
      t.references :category, foreign_key: true, null: false, index: true
      t.index :serial_number, unique: true

      t.timestamps
    end
  end
end
