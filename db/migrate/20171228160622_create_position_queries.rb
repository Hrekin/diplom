class CreatePositionQueries < ActiveRecord::Migration[5.1]
  def change
    create_table :position_queries do |t|
      t.references :query, foreign_key: true, null: false, index: true
      t.references :detail_model, foreign_key: true, null: false, index: true
      t.integer :quanity, null: false

      t.timestamps
    end
  end
end
