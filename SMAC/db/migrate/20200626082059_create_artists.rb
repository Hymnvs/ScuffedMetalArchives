class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :alias
      t.string :real_name
      t.integer :age
      t.string :place_of_origin
      t.string :gender
      t.string :info

      t.timestamps
    end
  end
end
