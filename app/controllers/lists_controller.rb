class ListsController < ApplicationController
    def index
        lists = List.all
        render json: ListSerializer.new(lists, {include: [:phrases]})
    end 

    def create
        list = List.new(list_params)
        if list.save
            render json: ListSerializer(list)
        else 
            render json: {message: "list can not be created"}
        end 
    end 

    def destroy
        list = List.find(params[:id])
        list.destroy 
        render json: {message: "#{list.name} has been deleted"}
    end 

    private 

    def list_params
        params.require(:dog).permit(:name)
    end 

end
