class Estado < ApplicationRecord
    has_many :cidades
    validates :name, presence: true, uniqueness: {case_sensitive: false}, length: {in: 4..30}
    validates :sigla, presence: true, uniqueness: true, length: {is: 2}
    before_save :normalize_fields
  
    private
    def normalize_fields
        self.name = self.name.titleize
        self.sigla = self.sigla.upcase
    end

end
