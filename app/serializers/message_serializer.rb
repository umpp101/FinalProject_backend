class MessageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :body, :read, :conversation_id, :user_id, :created_at

end
