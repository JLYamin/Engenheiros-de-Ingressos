class RemoveReferencesFromEventos < ActiveRecord::Migration[5.2]
  def change
    remove_reference :eventos, :category, foreign_key: true
  end
end
