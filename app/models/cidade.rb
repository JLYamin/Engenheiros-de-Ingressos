class Cidade < ApplicationRecord
  belongs_to :estado
  validates :cidade_nome, nill: false, length: {in: 4..30}, uniqueness: { scope: :estado_id, case_sensitive: false}

  before_save :normalize_fields

    private
    def normalize_fields
        self.cidade_nome = self.cidade_nome.titleize
    end
end
