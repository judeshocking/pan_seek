class AddRateToStoreInformations < ActiveRecord::Migration[6.1]
  def change
    add_column :store_informations, :rate, :float
  end
end
