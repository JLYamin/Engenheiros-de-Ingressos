class RemoveReferencesFromApresentacao < ActiveRecord::Migration[5.2]
  def change
    remove_reference :apresentacaos, :eventos, foreign_key: true
  end
end
