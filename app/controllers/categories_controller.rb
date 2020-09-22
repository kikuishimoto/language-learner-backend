class CategoriesController < ApplicationController
    def index
        categories = Category.all
        render json: CategorySerializer.new(categories, {include: [:phrases]})
    end 

    def create
        category = Category.new(category_params)
        if category.save
            render json: CategorySerializer.new(category)
        else 
            render json: {message: "category can not be created"}
        end 
    end 


    private 

    def category_params
        params.require(:category).permit(:name)
    end 

end
