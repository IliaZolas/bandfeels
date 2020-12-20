class CreatePlaylists < ActiveRecord::Migration[6.0]
  def change
    create_table :playlists do |t|
      t.string :playlist_title
      t.text :playlist_description

      t.timestamps
    end
  end
end
