class AddDescricaoToEventos < ActiveRecord::Migration[5.2]
  def change
    add_column :eventos, :descricao, :text
  end
end
