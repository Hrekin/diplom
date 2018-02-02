json.extract! query, :id, :request_id, :quantity, :person_id, :department_id, :created_at, :updated_at
json.url query_url(query, format: :json)
