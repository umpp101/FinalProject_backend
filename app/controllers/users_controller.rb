class UsersController < ApplicationController
    
    skip_before_action :authorized

    def index
        # byebug
        users = User.all
        render json: {users: users} , :include => [:conversations]
    end

    def create
        # byebug
        user = User.create(user_params)
        if user.valid?
            token = encode_token(user_id: user.id)
            render json: { user: UserSerializer.new(user), jwt: token }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end
    

    def show
        user = User.find(params[:id])
        # render json: {user: user}
        # render json: {user: user} , :include => [:posts]
        # render json: {user: user} , :include => [:comments]
        render json: {user: user} , :include => [:conversations, :posts, :comments]
        # render json: {user: user} , :include => [:messages]
        # render json: {user: user} , :include => [:follows]
    end

    def edit
        user = User.find(params[:id])
    end 

    def update
        user = User.find(params[:id])
        if user.update(user_params)
            render json: user
        else
            render json: {error: "Something went wrong"}
        end
    end

    def destroy
        user = User.find(params[:id])
        if user.destroy
            render json: {message: "Successfully deleted user"}
        else
            render json: {error: "Something went wrong"}
        end
    end

    private

    def user_params
        params.require(:user).permit(:user_name, :password, :first_name, :last_name, :age, :bio, :admin, :gender, :city, :country)
    end

end