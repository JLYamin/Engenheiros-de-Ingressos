class RemoveCnpjFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :cnpj, :string
  end
end
