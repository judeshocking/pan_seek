class AddBusinessHoursToStoreInformations < ActiveRecord::Migration[6.1]
  def change
    add_column :store_informations, :business_hours, :string
  end
end
