class AddLikeToLikedTracks < ActiveRecord::Migration[6.0]
  def change
    add_reference :liked_tracks, :like, null: false, foreign_key: true
  end
end
