class User < ApplicationRecord
    # Will return an array of follows for the given user instance
    has_many :received_follows, foreign_key: :followed_user_id, class_name: "Follow"
  
    # Will return an array of users who follow the user instance
    has_many :followers, through: :received_follows, source: :follower
    
    
    # returns an array of follows a user gave to someone else
    has_many :given_follows, foreign_key: :follower_id, class_name: "Follow"
    
    # returns an array of other users who the user has followed
    has_many :followings, through: :given_follows, source: :followed_user
  


    has_many :sender_conversations, foreign_key: :sender_id, class_name: "Conversation"
    has_many :receiver_conversations, foreign_key: :receiver_id, class_name: "Conversation"


    has_many :senders, through: :sender_conversations, source: :sender
    has_many :receivers, through: :receiver_conversations, source: :receiver

    has_many :sender_messages, through: :sender_conversations, source: :messages
    has_many :receiver_messages, through: :receiver_conversations, source: :messages

    def conversations
        sender_conversations + receiver_conversations
    end


    has_many :posts
    has_many :comments
    has_many :messages
  end
  
  