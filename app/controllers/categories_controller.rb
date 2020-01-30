class CategoriesController < ApplicationController
    skip_before_action :authorized
     
    def index
        categories = Category.all
        render json: {categories: categories}
    end

    def create
        category = Category.new(category_params)
        if category.save
            render json: {category: category}
        else
            render json: {error: "Something went wrong"}
        end
    end

    def show
        category = Category.find(params[:id])
        render json: {category: category}
    end

    def edit
        category = Category.find(params[:id])
    end

    def update
        category = Category.find(params[:id])
        if category.update(category_params)
            render json: {category: category} 
        else
            render json: {error: "Something went wrong"}
        end
    end

    def destroy
        category = Category.find(params[:id])
        if category.destroy
            render json: {message: "Successfully deleted category"}
        else
            render json: {error: "Something went wrong"}
        end
    end


    private 

    def category_params
        params.require(:category).permit(:name)
    end
end

