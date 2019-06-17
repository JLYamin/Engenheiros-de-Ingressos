class AddReferencesToApresentacaos < ActiveRecord::Migration[5.2]
  def change
    add_reference :apresentacaos, :eventos, foreign_key: true
  end
end
