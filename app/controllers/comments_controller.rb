class CommentsController < ApplicationController
    skip_before_action :authorized
    
    def index
        # byebug
        # comments = Comment.all
        post = Post.find(params[:post_id])
        render json: {comments: post.comments}
    end

    def create
        # byebug
        comment = Comment.new(comment_params)
        # comment.user_id = current_user.id
        # comment.post_id = params[:post_id]
        if comment.save
            render json: {comment: comment}
        else
            render json: {error: "Something went wrong"}
        end
    end

    def show
        comment = Comment.find(params[:id])
        render json: {comment: comment}
    end

    def destroy
        comment = Comment.find(params[:id])
        if comment.destroy
            render json: {message: "Successfully deleted comment"}
        else
            render json: {error: "Something went wrong"}
        end
    end
    
    private

    def comment_params
        params.require(:comment).permit(:body, :post_id, :user_id)
    end

end
