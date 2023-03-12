class RemoveCommentsFromComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :comments, :string
  end
end
