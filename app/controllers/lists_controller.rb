class ListsController < ApplicationController
    def index
        lists = List.all
        render json: ListSerializer.new(lists)
    end 

    def create
        list = List.new(list_params)
        if list.save
            render json: ListSerializer.new(list)
        else 
            render json: {message: "list can not be created"}
        end 
    end 

    def destroy
        list = List.find(params[:id])
        list.destroy 
        render json: {message: "#{list.name} has been deleted"}
    end 

end
