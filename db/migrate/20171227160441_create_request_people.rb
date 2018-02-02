class CreateRequestPeople < ActiveRecord::Migration[5.1]
  def change
    create_table :request_people do |t|
      t.references :request, foreign_key: true, index: true, null: false
      t.references :person, foreign_key: true, index: true, null: false
      t.string :person_type, null: false

      t.timestamps
    end

  reversible do |dir|
    	dir.up do
    		execute("ALTER TABLE request_people ADD CONSTRAINT person_type_check CHECK(person_type IN('Исполнитель', 'Инициатор'))")
    	end
    	dir.down do
    		execute("ALTER TABLE request_people DROP CONSTRAINT person_type_check ")
    	end
    end
  end
end
