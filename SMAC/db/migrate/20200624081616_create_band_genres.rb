class CreateBandGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :band_genres do |t|
      t.references :band, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
