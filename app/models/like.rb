class Like < ApplicationRecord
    has_many :liked_tracks
    has_many :tracks, through: :liked_tracks 
    belongs_to :user
    has_one_attached :photo
end
