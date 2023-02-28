class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true
      t.string :screen_name
      t.string :comments
      t.timestamps
    end
  end
end
