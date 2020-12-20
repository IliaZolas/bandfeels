class Track < ApplicationRecord
    belongs_to :album, :user
    has_many :tags, through: :tags_tracks
end
