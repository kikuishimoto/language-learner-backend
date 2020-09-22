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
        category = Category.find_or_create_by(name: params[:category])
        phrase.category = category
        if phrase.save
            render json: PhraseSerializer.new(phrase)
        else 
            render json: {message: "Error could not be deleted"}
        end 
    end 

    def destroy
        phrase = Phrase.find(params[:id])
        phrase.destroy
        render json: {message: "Successfully deleted #{phrase.content}"}
    end 

    private
    def phrase_params
        params.require(:phrase).permit(:content, :image, :pinyin, :category)
    end 


end
