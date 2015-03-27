class CreateOffres < ActiveRecord::Migration
  def change
    create_table :offres do |t|
      t.string :title
      t.text :descr
      t.integer :price

      t.timestamps
    end
  end
end
