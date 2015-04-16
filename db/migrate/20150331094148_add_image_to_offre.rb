class AddImageToOffre < ActiveRecord::Migration
  def change
    add_attachment :offres, :image
  end
end
