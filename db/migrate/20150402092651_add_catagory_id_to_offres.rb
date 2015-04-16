class AddCatagoryIdToOffres < ActiveRecord::Migration
  def change
    add_column :offres, :category_id, :integer
    # add_column :offres, :address, :string
  end
end
