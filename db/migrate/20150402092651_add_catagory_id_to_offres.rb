class AddCatagoryIdToOffres < ActiveRecord::Migration
  def change
    add_column :offres, :category_id, :integer
  end
end
