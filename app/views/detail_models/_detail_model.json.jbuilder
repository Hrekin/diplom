json.extract! detail_model, :id, :name, :serial_number, :description, :produce_date, :manufacter, :properties, :category_id, :created_at, :updated_at
json.url detail_model_url(detail_model, format: :json)
