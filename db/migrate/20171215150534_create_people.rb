class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :last_name, null: false, limit: 64
      t.string :first_name, null: false, limit: 64
      t.string :second_name
      t.date :birthday, null: false
      t.string :email, null: false
      t.string :person_phone, null: false
      t.references :department, foreign_key: true, null: false, index: true
      t.index [:last_name, :first_name, :second_name]
      t.index [:last_name, :first_name, :second_name, :birthday], unique: true, name: 'index_people_on_last_name_first_name_second_name_birthday'
      t.index :person_phone, unique: true
      t.timestamps
    end
  end
end
