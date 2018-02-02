json.extract! person, :id, :last_name, :first_name, :second_name, :birthday, :email, :person_phone, :department_id, :created_at, :updated_at
json.url person_url(person, format: :json)
