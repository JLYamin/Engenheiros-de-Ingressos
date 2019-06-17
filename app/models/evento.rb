class Evento < ApplicationRecord
    belongs_to :user
    belongs_to :classes_evento
    belongs_to :category
    belongs_to :faixa_etarium
    has_many :apresentacaos
end
