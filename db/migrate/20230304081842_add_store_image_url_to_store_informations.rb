class AddStoreImageUrlToStoreInformations < ActiveRecord::Migration[6.1]
  def change
    add_column :store_informations, :store_image_url, :text
  end
end
