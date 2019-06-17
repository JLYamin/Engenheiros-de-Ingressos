json.extract! evento, :id, :title, :date_begin, :date_end, :created_at, :updated_at
json.url evento_url(evento, format: :json)
