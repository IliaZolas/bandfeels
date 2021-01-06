class Track < ApplicationRecord
    belongs_to :album
    belongs_to :user
    has_many :playlists, through: :playlists_tracks
    has_many :tags, through: :tags_tracks

    validates :title, presence: true, length: { in: 1..20 }
    validates :description, presence: true, length: { in: 10..60 }
    has_one_attached :photo
    has_attached_file :audio
#   validates_attachment_content_type :audio, content_type: [ 'audio/mpeg', 'audio/x-mpeg', 'audio/mp3', 'audio/x-mp3', 'audio/mpeg3', 'audio/x-mpeg3', 'audio/mpg', 'audio/x-mpg', 'audio/x-mpegaudio' ]
end
