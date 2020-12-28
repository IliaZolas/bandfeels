class AddImageToTracks < ActiveRecord::Migration[6.0]
  def change
    add_column :tracks, :photo, :string
  end
end
