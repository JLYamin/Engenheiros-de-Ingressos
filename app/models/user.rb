class User < ApplicationRecord
  has_many :eventos
  validates_cpf_format_of :cpf, unique: true
  validates_cnpj_format_of :cnpj, unique:true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
