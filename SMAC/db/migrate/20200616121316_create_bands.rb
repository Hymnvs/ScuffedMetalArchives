class CreateBands < ActiveRecord::Migration[6.0]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :country
      t.string :location
      t.datetime :formation_date

      t.timestamps
    end
  end
end
