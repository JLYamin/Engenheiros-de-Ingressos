class CreateSalas < ActiveRecord::Migration[5.2]
  def change
    create_table :salas do |t|
      t.integer :num
      t.string :complemento_sala
      t.references :local, foreign_key: true

      t.timestamps
    end
  end
end
