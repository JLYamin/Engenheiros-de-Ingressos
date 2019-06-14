class CreateFaixaEtaria < ActiveRecord::Migration[5.2]
  def change
    create_table :faixa_etaria do |t|
      t.string :faixa_etaria
      t.text :description

      t.timestamps
    end
  end
end
