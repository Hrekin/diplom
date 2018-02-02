json.extract! request, :id, :request_name, :request_status, :request_urgency, :request_label, :request_number, :request_discription, :created_at, :updated_at
json.url request_url(request, format: :json)
