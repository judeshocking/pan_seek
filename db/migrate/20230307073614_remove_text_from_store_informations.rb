class RemoveTextFromStoreInformations < ActiveRecord::Migration[6.1]
  def change
    remove_column :store_informations, :text, :text
  end
end
