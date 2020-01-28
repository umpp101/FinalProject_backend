class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :view_count, default: 0
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
