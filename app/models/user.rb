class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  has_many :playlists
  has_many :tracks
  has_many :albums
  has_many :likes
  has_many :liked_tracks, :through => :likes, :source => :track
  has_one_attached :photo
end
