class CreateMaterialValues < ActiveRecord::Migration[5.1]
  def change
    create_table :material_values do |t|
      t.string :status, null: false
      t.references :exemplar_detail, foreign_key: true, null: false, index: true
      t.references :position_query, foreign_key: true, null: false, index: true

      t.timestamps
    end
  end
end
