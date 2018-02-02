class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.integer :floor, null: false
      t.integer :room_number, null: false
      t.references :department, foreign_key: true, null: false, index: true
      t.references :building, foreign_key: true, null: false, index: true
      t.timestamps
    end
  end
end
