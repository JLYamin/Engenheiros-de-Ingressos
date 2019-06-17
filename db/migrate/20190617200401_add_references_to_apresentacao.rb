class AddReferencesToApresentacao < ActiveRecord::Migration[5.2]
  def change
    add_reference :apresentacaos, :evento, foreign_key: true
  end
end
