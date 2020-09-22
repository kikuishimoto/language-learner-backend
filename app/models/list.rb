class List < ApplicationRecord
    has_many :phrases_lists
    has_many :phrases, through: :phrases_lists
end
