class TutorsController < ApplicationController
    #lists tutors
    def index
        tutors = Tutor.all
        render json: TutorSerializer.new(tutors)
    end 
    #creates tutors
    def create
        tutor = Tutor.new(tutor_params)
        if tutor.save
            render json: TutorSerializer.new(tutor)
        else 
            render json: {message: "Tutor can not be created"}
        end 
    end 


    private
    #params  

    def category_params
        params.require(:tutor).permit(:name, :description, :image, :email)
    end 
end
