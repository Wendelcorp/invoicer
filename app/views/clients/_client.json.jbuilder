json.extract! client, :id, :name, :email, :address, :invoice_number, :created_at, :updated_at
json.url client_url(client, format: :json)
