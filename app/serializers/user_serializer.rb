class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_name, :first_name, :last_name, :bio
  has_many :posts
  has_many :messages
  has_many :comments

  has_many :conversations

  
  has_many :received_follows
  has_many :given_follows
  # has_many :receiver_conversations
  # send messages in convo serializer
end
