class User < ApplicationRecord
  has_many :eventos
  has_one :credit_card
  accepts_nested_attributes_for :credit_card
  validates :cpf, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #validates :name, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
