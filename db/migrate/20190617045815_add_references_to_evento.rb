class AddReferencesToEvento < ActiveRecord::Migration[5.2]
  def change
    add_reference :eventos, :faixa_etarium, foreign_key: true
    add_reference :eventos, :classes_evento, foreign_key: true
    add_reference :eventos, :category, foreign_key: true
  end
end
