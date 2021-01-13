class Playlist < ApplicationRecord
    has_many :playlist_tracks
    has_many :tracks, through: :playlist_tracks
    has_many :tags, through: :playlist_tags
    belongs_to :user

    validates :playlist_title, presence: true, length: { in: 1..20 }
    validates :playlist_description, presence: true, length: { in: 10..60 }

    has_one_attached :photo
end
