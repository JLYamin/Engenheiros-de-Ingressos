class CreateLocals < ActiveRecord::Migration[5.2]
  def change
    create_table :locals do |t|
      t.string :local
      t.string :endereco
      t.references :cidade, foreign_key: true

      t.timestamps
    end
  end
end
