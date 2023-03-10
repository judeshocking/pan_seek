class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.references :bread, foreign_key: true
      t.float :rate, null: false
      t.text :text, null: false

      t.timestamps
    end
  end
end
