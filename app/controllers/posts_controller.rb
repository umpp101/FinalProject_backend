class PostsController < ApplicationController

    skip_before_action :authorized
    
    def index 
        posts = Post.all.order('created_at DESC')
        render json: {posts: posts}
        # user = User.find(params[:user_id])
        # render json: {posts: user.posts} , :include => [:comments]
        
    end

    def create
        post = Post.new(post_params)    
        if post.save
        render json: {posts: posts} , :include => [:comments]
        else
            render json: {error: "Something went wrong"}
        end
    end
    
    def show
        post = Post.find(params[:id])
        render json: {post: post} , :include => [:comments]
    end

    def edit
        post = Post.find(params[:id])
    end

    def update
        post = Post.find(params[:id])
        if post.update(post_params)
            render json: {posts: posts} , :include => [:comments]
        else
            render json: {error: "Something went wrong"}
        end
    end
    
    def destroy
        post = Post.find(params[:id])
        if post.destroy
            render json: {message: "Successfully deleted post"}
        else
            render json: {error: "Something went wrong"}
        end
    end



    private 

    def post_params
        params.require(:post).permit(:title, :body, :view_id, :user_id, :category_id)
    end
end