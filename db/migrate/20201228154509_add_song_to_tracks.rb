class AddSongToTracks < ActiveRecord::Migration[6.0]
  def change
    add_column :tracks, :track, :string
  end
end
