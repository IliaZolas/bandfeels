class Track < ApplicationRecord
    belongs_to :album
    belongs_to :user
    has_many :playlist_tracks
    has_many :playlists, through: :playlist_tracks
    has_many :likes, through: :liked_tracks
    has_many :tags, through: :tags_tracks
    accepts_nested_attributes_for :playlist_tracks, allow_destroy: true

    validates :title, presence: true, length: { in: 1..20 }
    validates :description, presence: true, length: { in: 10..60 }
    has_one_attached :photo
    has_one_attached :track
end
