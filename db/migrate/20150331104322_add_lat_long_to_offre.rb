class AddLatLongToOffre < ActiveRecord::Migration
  def change
    add_column :offres, :latitude, :float
    add_column :offres, :longitude, :float
  end
end
