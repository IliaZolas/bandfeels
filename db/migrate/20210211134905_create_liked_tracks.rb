class CreateLikedTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :liked_tracks do |t|

      t.timestamps
    end
  end
end
