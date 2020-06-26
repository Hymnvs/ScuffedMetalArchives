class CreateBandArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :band_artists do |t|
      t.references :band, null: false, foreign_key: true
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
