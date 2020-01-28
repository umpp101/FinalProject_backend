class PostSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :name
    has_many :posts
  end
  