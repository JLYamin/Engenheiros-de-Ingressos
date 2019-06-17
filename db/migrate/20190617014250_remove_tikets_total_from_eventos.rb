class RemoveTiketsTotalFromEventos < ActiveRecord::Migration[5.2]
  def change
    remove_column :eventos, :tickets_total, :integer
  end
end
