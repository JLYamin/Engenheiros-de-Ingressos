json.extract! credit_card, :id, :number, :security, :expiration, :created_at, :updated_at
json.url credit_card_url(credit_card, format: :json)
