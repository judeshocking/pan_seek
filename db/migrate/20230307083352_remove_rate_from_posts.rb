class RemoveRateFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :rate, :float
  end
end
