class Apresentacao < ApplicationRecord
    belongs_to :evento
    validates :ingressos_total, presence:true, numericality: { only_integer: true, greater_than: 0 }
    validates :horario, presence:true
    validates :name, presence:true, length: { in: 2..40 } 
    validates :descricao, presence:true, length: { in: 2..1000 }
    before_save :normalize_fields
    private
    def normalize_fields
        self.descricao = self.descricao.titleize
        self.name = self.name.capitalize
    end

end
