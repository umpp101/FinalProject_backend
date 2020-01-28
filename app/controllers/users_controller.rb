class UsersController < ApplicationController
    
    def index
        # byebug
        users = User.all
        render json: {users: users}
        # render json: UserSerializer.new(users, {except: [:password_digest]})
    end

end