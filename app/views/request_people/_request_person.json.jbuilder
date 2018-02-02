json.extract! request_person, :id, :request_id, :person_id, :person_type, :created_at, :updated_at
json.url request_person_url(request_person, format: :json)
