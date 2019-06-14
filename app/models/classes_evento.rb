class ClassesEvento < ApplicationRecord
    validates :classe, presence: true, uniqueness: true 
end
