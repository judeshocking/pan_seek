class AddTextToStoreInformations < ActiveRecord::Migration[6.1]
  def change
    add_column :store_informations, :text, :text
  end
end
