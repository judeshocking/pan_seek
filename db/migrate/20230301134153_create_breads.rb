class CreateBreads < ActiveRecord::Migration[6.1]
  def change
    create_table :breads do |t|
      t.string :name, null: false
      t.string :introduction, null: false
      t.integer :price, null: false
      t.text :product_image_url, null: false

      t.timestamps
    end
  end
end
