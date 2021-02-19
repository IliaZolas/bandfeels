class Like < ApplicationRecord
  belongs_to :track
  belongs_to :user
  has_many :tracks
end
