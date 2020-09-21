class PhraseSerializer
    include FastJsonapi::ObjectSerializer
    attributes :content, :image, :pinyin
    belongs_to :list
    
end 