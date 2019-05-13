json.extract! evento, :id, :title, :date_begin, :date_end, :tickets_total, :created_at, :updated_at
json.url evento_url(evento, format: :json)
