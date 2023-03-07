class RemoveReatFromStoreInformations < ActiveRecord::Migration[6.1]
  def change
    remove_column :store_informations, :rate, :float
  end
end
