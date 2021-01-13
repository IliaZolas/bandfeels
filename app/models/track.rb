class Track < ApplicationRecord
    belongs_to :album
    belongs_to :user
    has_many :playlists, through: :playlist_tracks
    has_many :playlist_tracks
    has_many :tags, through: :tags_tracks

    validates :title, presence: true, length: { in: 1..20 }
    validates :description, presence: true, length: { in: 10..60 }
    has_one_attached :photo
    has_one_attached :track
end
