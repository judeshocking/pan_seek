class RemoveBusinessHoursFromStoreInformations < ActiveRecord::Migration[6.1]
  def change
    remove_column :store_informations, :business_hours, :integer
  end
end
