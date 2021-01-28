class AddTagToTracks < ActiveRecord::Migration[6.0]
  def change
    add_column :tracks, :tag, :string
  end
end
