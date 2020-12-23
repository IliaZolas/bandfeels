class Track < ApplicationRecord
    belongs_to :album
    belongs_to :user
    has_many :playlists, through: :playlists_tracks
    has_many :tags, through: :tags_tracks
end
