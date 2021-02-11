class AddTrackToLikedTracks < ActiveRecord::Migration[6.0]
  def change
    add_reference :liked_tracks, :track, null: false, foreign_key: true
  end
end
