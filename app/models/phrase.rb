class Phrase < ApplicationRecord
    belongs_to :category
    has_many :phrases_lists
    has_many :lists, through: :phrases_lists
end
