class CreateContrats < ActiveRecord::Migration
  def change
    create_table :contrats do |t|
      t.datetime :startDate
      t.datetime :endDate
      t.integer :offre_id
      t.integer :offreur_id
      t.integer :demandeur_id

      t.timestamps
    end
    add_index :contrats, :offre_id
    add_index :contrats, :offreur_id
    add_index :contrats, :demandeur_id
  end
end
