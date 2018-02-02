class CreateExemplarDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :exemplar_details do |t|
      t.string :exemplar_detail_name, null: false
      t.string :exemplar_detail_description, null: false
      t.string :inventory_number, null: false
      t.references :detail_model, foreign_key: true, null: false, index: true
      t.references :set_detail, foreign_key: true, index: true #null: false
      t.index :inventory_number, unique: true
      t.timestamps
    end
  end
end
