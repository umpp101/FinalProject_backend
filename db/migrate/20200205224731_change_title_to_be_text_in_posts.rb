class ChangeTitleToBeTextInPosts < ActiveRecord::Migration[6.0]
  def up
    change_column :posts, :title, :text
  end
  def down
    change_column :posts, :title, :string
  end
end
