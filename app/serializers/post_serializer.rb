class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :body, :view_id, :user_id, :category_id, :created_at
  has_many :comments
end
