class Like < ApplicationRecord
    has_many :tracks, through: :liked_tracks 
    belongs_to :user
end
