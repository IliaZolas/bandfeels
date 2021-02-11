class LikedTrack < ApplicationRecord
    belongs_to :like
    belongs_to :track
end
