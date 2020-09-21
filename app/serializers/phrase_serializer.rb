class PhraseSerializer
    include FastJsonapi::ObjectSerializer
    attributes :content, :image, :pinyin
end 