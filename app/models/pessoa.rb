class Pessoa < ApplicationRecord
  # Validaçoes
  validates :nome, presence: true, length: { minimum: 1 }
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :cpf, presence: true
  validates :cpf, presence: true, uniqueness: true, cpf: true
  validates :cpf, :cpf => true
  validates :telefone, presence: true, length: { minimum: 1 }

end
