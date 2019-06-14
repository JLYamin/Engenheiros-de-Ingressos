class CreateEstados < ActiveRecord::Migration[5.2]
  def change
    create_table :estados do |t|
      t.string :name
      t.string :sigla

      t.timestamps
    end
  end
end
