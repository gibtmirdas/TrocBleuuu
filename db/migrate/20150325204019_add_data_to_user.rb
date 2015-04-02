class AddDataToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :street, :text
    add_column :users, :npa, :integer
    add_column :users, :commune, :string
    add_column :users, :phone, :string
    add_column :users, :latitude, :float , limit: 24
    add_column :users, :longitude, :float , limit: 24
    add_column :users, :address, :string
  end
end
