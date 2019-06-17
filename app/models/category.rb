class Category < ApplicationRecord
    has_many :eventos
    validates :category, presence: true, uniqueness: true 
end
