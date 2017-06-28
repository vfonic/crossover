json.extract! ticket, :id, :title, :description, :created_at, :updated_at
json.url api_ticket_url(ticket, format: :json)
