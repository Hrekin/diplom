class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.string :request_name, null: false, limit: 64
      t.string :request_status, null: false
      t.string :request_urgency, null: false
      t.string :request_label
      t.integer :request_number, null: false
      t.string :request_discription
      t.index :request_number, unique: true
      t.timestamps
    end
    # reversible do |dir|
    #   dir.up do
    #     execute("ALTER TABLE requests ADD CONSTRAINT status_check CHECK(request_status IN ('Выполнено', 'Выполняется', 'Ожидание', 'Отменено'))")
    #     execute("ALTER TABLE requests ADD CONSTRAINT urgency_check CHECK(request_urgency IN ('Обычное', 'Срочное', 'VIP'))")
    #   end
    #   dir.down do
    #     execute("ALTER TABLE requests DROP CONSTRAINT status_check ")
    #     execute("ALTER TABLE requests DROP CONSTRAINT urgency_check ")
    #   end
    # end
  end
end
