class Track < ApplicationRecord
   
   
    belongs_to :playlist, through: :playlists_tracks
    has_many :tags, through: :tags_tracks
end
