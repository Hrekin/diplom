class CreateDispositions < ActiveRecord::Migration[5.1]
  def change
    create_table :dispositions do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
