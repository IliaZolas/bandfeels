class AddColumnsToTracks < ActiveRecord::Migration[6.0]
  def change
    add_reference :tracks, :album, null: false, foreign_key: true
    add_reference :tracks, :user, null: false, foreign_key: true
  end
end
