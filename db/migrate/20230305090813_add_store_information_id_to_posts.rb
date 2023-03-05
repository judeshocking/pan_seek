class AddStoreInformationIdToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :store_information_id, :integer
  end
end
