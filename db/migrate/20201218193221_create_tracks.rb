class CreateTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :tracks do |t|
      t.string :title
      t.text :description
      t.string :artist

      t.timestamps
    end
  end
end
