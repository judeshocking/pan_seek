class CreateStoreComments < ActiveRecord::Migration[6.1]
  def change
    create_table :store_comments do |t|
      t.text :store_comment
      t.integer :user_id
      t.integer :store_information_id
      t.float :store_rate

      t.timestamps
    end
  end
end
