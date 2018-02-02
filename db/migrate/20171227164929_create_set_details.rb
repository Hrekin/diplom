class CreateSetDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :set_details do |t|
      t.string :set_name, null: false

      t.timestamps
    end
  end
end
