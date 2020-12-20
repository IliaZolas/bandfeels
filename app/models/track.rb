class Track < ApplicationRecord
    belongs_to :album
    belongs_to :user
    
    has_many :tags, through: :tags_tracks
end
