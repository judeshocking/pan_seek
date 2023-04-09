class CreateStoreInformations < ActiveRecord::Migration[6.1]
  def change
    create_table :store_informations do |t|
       t.bigint :bread_id
       t.string :address, null: false
       t.string :access, null: false
       t.integer :business_hours, null: false
       t.string :eat_in_space, null: false
       t.string :regular_holiday, null: false

      t.timestamps
    end
  end
end
