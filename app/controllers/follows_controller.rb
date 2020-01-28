class FollowsController < ApplicationController
    
    def index
        follows = Follow.all
        render json: {follows: follows}
    end

    def create
        follow = Follow.new(follow_params)    
        if follow.save
        render json: {follows: follows}
        else
            render json: {error: "Something went wrong"}
        end
    end

    def show
        follow = Follow.find(params[:id])
        render json: {follow: follow}
    end


    def destroy
        follow = Follow.find(params[:id])
        if follow.destroy
            render json: {message: "Successfully deleted follow"}
        else
            render json: {error: "Something went wrong"}
        end
    end

    
    private 

    def follow_params
        params.require(:follow).permit(:follower_id, :followed_user_id)
    end
end
