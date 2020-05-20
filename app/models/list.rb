class List < ApplicationRecord
    has_many :categories
    has_many :roundlists
    has_many :rounds, through: :roundlists #may need to reconsider pluralization/punctuation of roundlists
end
