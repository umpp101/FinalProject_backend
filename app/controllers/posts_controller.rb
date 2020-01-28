class PostsController < ApplicationController

    def index 
        posts = Post.all.order('created_at DESC')
        render json: {posts: posts} , :include => [:comments]
    end
end
