class ClassesEvento < ApplicationRecord
    has_many :eventos
    validates :classe, presence: true, uniqueness: {case_sensitive: false} 

    before_save :normalize_fields
    private
    def normalize_fields
        self.classe = self.classe.titleize
    end
end
