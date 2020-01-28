class Follow < ApplicationRecord
    # The user doing the follow
    # foreign_key: :follower_id tells Rails to look under the attribute of
    # :follower_id on the follows table for what ID is there. 
    # It then takes this ID and looks at the line class_name: “User”, 
    # which tells Rails to search the users table’s ID column for the given ID. The user instance with said ID will be returned.
    # Basically Rails will take the follower_id and try to find the user with that ID.
  belongs_to :follower, foreign_key: :follower_id, class_name: "User"

  # The user being followed
  belongs_to :followed_user, foreign_key: :followed_user_id, class_name: "User"
end
