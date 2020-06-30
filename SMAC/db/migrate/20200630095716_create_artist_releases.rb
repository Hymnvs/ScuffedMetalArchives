class CreateArtistReleases < ActiveRecord::Migration[6.0]
  def change
    create_table :artist_releases do |t|
      t.references :artist, null: false, foreign_key: true
      t.references :release, null: false, foreign_key: true

      t.timestamps
    end
  end
end
