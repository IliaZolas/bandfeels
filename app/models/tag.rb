class Tag < ApplicationRecord
    has_many :tracks, through: :tags_tracks
    has_many :playlists, through: :playlists_tags
end
