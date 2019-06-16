class AddNameToApresentacaos < ActiveRecord::Migration[5.2]
  def change
    add_column :apresentacaos, :name, :string
  end
end
