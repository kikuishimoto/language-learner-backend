class ListsController < ApplicationController
    def index 
        lists = List.all
        render json: ListSerializer.new(lists)
    end 

    def create 
        list = List.new(list_params)
        list.save
        render json: ListSerializer.new(list)
    end 

    def destroy
        list = List.find(params[:id])
        list.destroy
        render json: {message: "Successfully deleted #{list.name}"}
    end 

    private
    def list_params
        params.require(:list).permit(:name)
    end
end
