class CreateEventos < ActiveRecord::Migration[5.2]
  def change
    create_table :eventos do |t|
      t.string :title
      t.datetime :date_begin
      t.datetime :date_end
      t.integer :tickets_total

      t.timestamps
    end
  end
end
