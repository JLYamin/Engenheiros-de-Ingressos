class Estado < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: {in: 4..30}
    validates :sigla, presence: true, uniqueness: true, length: {is: 2}
end
