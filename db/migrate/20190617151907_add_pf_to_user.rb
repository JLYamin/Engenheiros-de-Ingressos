class AddPfToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :pf, :boolean, default:true
  end
end
