class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.string :role_name, null: false
      t.string :role_discription, null: false

      t.timestamps
    end
  end
end
