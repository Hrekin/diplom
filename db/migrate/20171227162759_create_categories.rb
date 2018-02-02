class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :category_name, null: false, limit: 64
      t.string :category_description
      t.index :category_name, unique: true
      t.timestamps
    end
  end
end
