class CreateDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :departments do |t|
      t.string :department_name, null: false
      t.integer :department_number, null: false
      t.string :department_phone
      t.index :department_number, unique: true
      t.index :department_name, unique: true
      t.timestamps
     end
    #reversible do |dir|
    #	dir.up do
    #		execute("ALTER TABLE departments ADD CONSTRAINT numcheck CHECK(department_number > 0)")
    #	end
    #	dir.down do
    #		execute("ALTER TABLE departments DROP CONSTRAINT numcheck ")
    #	end
    #end
  end
end
