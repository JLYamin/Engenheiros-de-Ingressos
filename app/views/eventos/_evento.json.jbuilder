json.extract! evento, :id, :title, :date_begin, :date_end, :created_at, :updated_at, :faixa_etarium_id, :classes_evento_id, :descricao, :user_id
json.url evento_url(evento, format: :json)
