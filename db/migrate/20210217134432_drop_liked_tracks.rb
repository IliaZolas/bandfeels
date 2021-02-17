class DropLikedTracks < ActiveRecord::Migration[6.0]
  def change
    drop_table :liked_tracks
  end
end
