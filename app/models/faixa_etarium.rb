class FaixaEtarium < ApplicationRecord
    validates :faixa_etaria, presence: true, uniqueness: true, length: {in: 5..48}
    validates :description, presence: true, length: {in: 6..700}
end
