class RemoveStoreInformationIdFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :store_informations_id, :integer
  end
end
