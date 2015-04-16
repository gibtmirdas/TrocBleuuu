class AddAddressToOffre < ActiveRecord::Migration
  def change
    add_column :offres, :address, :string
  end
end
