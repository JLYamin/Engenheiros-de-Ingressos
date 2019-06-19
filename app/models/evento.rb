class Evento < ApplicationRecord
    belongs_to :user
    belongs_to :classes_evento
    belongs_to :faixa_etarium
    has_many :apresentacaos

    before_save :normalize_fields
    # validate :mesmo_evento_na_mesma_data

    validates :title, presence: true, length:{in: 2..30}
    validate :dates_cannot_be_in_the_past


    private
    def normalize_fields
        self.title = self.title.downcase
        self.title = self.title.titleize
        #self.descricao = self.descricao.capitalize
    end

    def mesmo_evento_na_mesma_data
        if Evento.exists?(title: self.title.downcase.titleize, date_begin: self.date_begin.to_date.beginning_of_day..self.date_end.to_date.end_of_day)            
            errors.add(:title, "ja existe")
        end
    end

    def dates_cannot_be_in_the_past
        if (date_begin.present? && date_begin < Date.today)
        errors.add(:date_begin, "can't be in the past")
        end
        if date_end.present? && date_end < Date.today
        errors.add(:date_end, "can't be in the past")
        end

        if date_begin >= date_end
            errors.add(:date_begin, "must begin before end")
        end
    end
end
