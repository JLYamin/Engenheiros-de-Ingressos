class AddDescricaoToApresentacaos < ActiveRecord::Migration[5.2]
  def change
    add_column :apresentacaos, :descricao, :text
  end
end
