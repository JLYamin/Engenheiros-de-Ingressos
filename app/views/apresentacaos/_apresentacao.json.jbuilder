json.extract! apresentacao, :id, :name, :descricao, :horario, :ingressos_total, :disponiveis, :created_at, :updated_at
json.url apresentacao_url(apresentacao, format: :json)
