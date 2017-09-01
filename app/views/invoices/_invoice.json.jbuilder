json.extract! invoice, :id, :due, :message, :status, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
