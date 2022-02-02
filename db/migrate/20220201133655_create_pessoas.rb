class CreatePessoas < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :email
      t.string :cpf
      t.string :telefone

      t.timestamps
    end
  end
end
