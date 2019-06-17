class ClassesEvento < ApplicationRecord
    has_many :eventos
    validates :classe, presence: true, uniqueness: true 
end
