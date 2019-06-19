class CreateIngressos < ActiveRecord::Migration[5.2]
  def change
    create_table :ingressos do |t|
      t.references :apresentacao, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
