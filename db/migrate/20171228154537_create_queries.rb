class CreateQueries < ActiveRecord::Migration[5.1]
  def change
    create_table :queries do |t|
      t.references :request, foreign_key: true, index: true, null: false
      t.integer :quantity, null: false
      t.references :person, foreign_key: true, null: false, index: true
      t.references :department, foreign_key: true, null: false, index: true

      t.timestamps
    end
  end
end
