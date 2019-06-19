class Ingresso < ApplicationRecord
  belongs_to :apresentacao
  belongs_to :user
end
