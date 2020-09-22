class PhrasesList < ApplicationRecord
    belongs_to :phrase
    belongs_to :list
end 