class AddUserIdToOffre < ActiveRecord::Migration
  def change
    add_column :offres, :user_id, :integer
    add_index :offres, :user_id
  end
end
