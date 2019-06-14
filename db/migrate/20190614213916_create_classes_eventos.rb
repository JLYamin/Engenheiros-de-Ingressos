class CreateClassesEventos < ActiveRecord::Migration[5.2]
  def change
    create_table :classes_eventos do |t|
      t.string :classe

      t.timestamps
    end
  end
end
