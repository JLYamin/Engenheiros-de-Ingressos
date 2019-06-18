class CreateCreditCards < ActiveRecord::Migration[5.2]
  def change
    create_table :credit_cards do |t|
      t.integer :number
      t.integer :security
      t.date :expiration

      t.timestamps
    end
  end
end
