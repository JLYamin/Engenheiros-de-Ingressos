class CreateApresentacaos < ActiveRecord::Migration[5.2]
  def change
    create_table :apresentacaos do |t|
      t.timestamp :horario
      t.integer :ingressos_total
      t.integer :disponiveis

      t.timestamps
    end
  end
end
