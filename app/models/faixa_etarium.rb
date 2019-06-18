class FaixaEtarium < ApplicationRecord
    has_many :eventos 
    validates :faixa_etaria, presence: true, uniqueness: {case_sensitive: false}, length: {in: 5..48}
    validates :description, presence: true, length: {in: 6..700}
    before_save :normalize_fields

    private
    def normalize_fields
        self.faixa_etaria = self.faixa_etaria.titleize
        self.description = self.description.capitalize
    end
end
