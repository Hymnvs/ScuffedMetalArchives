class CreateWeblinks < ActiveRecord::Migration[6.0]
  def change
    create_table :weblinks do |t|
      t.string :title
      t.string :url
      t.references :band, null: false, foreign_key: true

      t.timestamps
    end
  end
end
