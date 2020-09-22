class PhraseSerializer
    include FastJsonapi::ObjectSerializer
    attributes :content, :image, :pinyin, :lists
    belongs_to :category
    
end 