class Album < ApplicationRecord
    has_many :tracks
    belongs_to :user

    validates :album_title, presence: true, length: { in: 1..20 }
    validates :album_description, presence: true, length: { in: 10..60 }
    has_one_attached :photo
end
