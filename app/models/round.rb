class Round < ApplicationRecord
    belongs_to :game
    has_many :roundlists
    has_many :lists, through: :roundlists
end
