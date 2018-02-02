json.extract! room, :id, :floor, :room_number, :department_id, :building_id, :created_at, :updated_at
json.url room_url(room, format: :json)
