class CreatePersonRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :person_roles do |t|
      t.references :person, foreign_key: true, index: true, null: false
      t.references :role, foreign_key: true, index: true, null: false

      t.timestamps
    end
  end
end
