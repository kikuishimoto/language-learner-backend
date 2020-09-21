class PhrasesController < ApplicationController
    def index 
        phrases = Phrase.all
        render json: PhraseSerializer.new(phrases)
    end

    def show 
        phrase = Phrase.find(params[:id])
        render json: PhraseSerializer.new(phrase)
    end
    def create 
        phrase = Phrase.new(phrase_params)
        if phrase.save
            render json: PhraseSerializer.new(phrase)
        else 
            render json: {message: "Error could not be deleted"}
        end 

    def destroy
        phrase = Phrase.find(params[:id])
        phrase.destroy
        render json: {message: "Successfully deleted #{phrase.content}"}
    end 

end
