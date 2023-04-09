class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.bigint :user_id
      t.bigint :post_id
      t.string :screen_name
      t.string :comments
      t.timestamps
    end
  end
end
