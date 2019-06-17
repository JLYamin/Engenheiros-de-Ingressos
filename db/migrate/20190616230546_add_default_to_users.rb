class AddDefaultToUsers < ActiveRecord::Migration[5.2]
  def up
    change_column :users, :adm, :boolean, null: false, default: false
  end
end
