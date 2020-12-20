class Playlist < ApplicationRecord
    has_many :tracks, through: :playlists_tracks
    has_many :tags, through: :playlists_tags
    belongs_to :user
end
