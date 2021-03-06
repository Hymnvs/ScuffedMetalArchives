# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_30_095716) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "artist_releases", force: :cascade do |t|
    t.integer "artist_id", null: false
    t.integer "release_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artist_id"], name: "index_artist_releases_on_artist_id"
    t.index ["release_id"], name: "index_artist_releases_on_release_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "alias"
    t.string "real_name"
    t.integer "age"
    t.string "place_of_origin"
    t.string "gender"
    t.string "info"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "band_artists", force: :cascade do |t|
    t.integer "band_id", null: false
    t.integer "artist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artist_id"], name: "index_band_artists_on_artist_id"
    t.index ["band_id"], name: "index_band_artists_on_band_id"
  end

  create_table "band_genres", force: :cascade do |t|
    t.integer "band_id", null: false
    t.integer "genre_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["band_id"], name: "index_band_genres_on_band_id"
    t.index ["genre_id"], name: "index_band_genres_on_genre_id"
  end

  create_table "bands", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "location"
    t.datetime "formation_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "release_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "releases", force: :cascade do |t|
    t.string "title"
    t.integer "release_type_id", null: false
    t.date "release_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "band_id", null: false
    t.index ["band_id"], name: "index_releases_on_band_id"
    t.index ["release_type_id"], name: "index_releases_on_release_type_id"
  end

  create_table "weblinks", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.integer "band_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["band_id"], name: "index_weblinks_on_band_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "artist_releases", "artists"
  add_foreign_key "artist_releases", "releases"
  add_foreign_key "band_artists", "artists"
  add_foreign_key "band_artists", "bands"
  add_foreign_key "band_genres", "bands"
  add_foreign_key "band_genres", "genres"
  add_foreign_key "releases", "bands"
  add_foreign_key "releases", "release_types"
  add_foreign_key "weblinks", "bands"
end
