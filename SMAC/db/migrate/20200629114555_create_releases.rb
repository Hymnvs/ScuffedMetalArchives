class CreateReleases < ActiveRecord::Migration[6.0]
  def change
    create_table :releases do |t|
      t.string :title
      t.references :release_type, null: false, foreign_key: true
      t.date :release_date

      t.timestamps
    end
  end
end
