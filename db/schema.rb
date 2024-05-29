# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_05_28_172520) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "cast_films", force: :cascade do |t|
    t.bigint "cast_id", null: false
    t.bigint "film_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cast_id"], name: "index_cast_films_on_cast_id"
    t.index ["film_id"], name: "index_cast_films_on_film_id"
  end

  create_table "casts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "description"
    t.bigint "role_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_casts_on_role_id"
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "user_profile_id", null: false
    t.bigint "film_id", null: false
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["film_id"], name: "index_comments_on_film_id"
    t.index ["user_profile_id"], name: "index_comments_on_user_profile_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "country_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "country_films", force: :cascade do |t|
    t.bigint "country_id", null: false
    t.bigint "film_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_country_films_on_country_id"
    t.index ["film_id"], name: "index_country_films_on_film_id"
  end

  create_table "films", force: :cascade do |t|
    t.string "title"
    t.string "slogan"
    t.string "link"
    t.date "release_date"
    t.bigint "maturity_rating_id", null: false
    t.integer "duration"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["maturity_rating_id"], name: "index_films_on_maturity_rating_id"
  end

  create_table "genre_films", force: :cascade do |t|
    t.bigint "genre_id", null: false
    t.bigint "film_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["film_id"], name: "index_genre_films_on_film_id"
    t.index ["genre_id"], name: "index_genre_films_on_genre_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maturity_ratings", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.bigint "user_profile_id", null: false
    t.bigint "film_id", null: false
    t.integer "score", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["film_id"], name: "index_ratings_on_film_id"
    t.index ["user_profile_id"], name: "index_ratings_on_user_profile_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_histories", force: :cascade do |t|
    t.bigint "user_profile_id", null: false
    t.bigint "film_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["film_id"], name: "index_user_histories_on_film_id"
    t.index ["user_profile_id"], name: "index_user_histories_on_user_profile_id"
  end

  create_table "user_likes", force: :cascade do |t|
    t.bigint "user_profile_id", null: false
    t.bigint "film_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["film_id"], name: "index_user_likes_on_film_id"
    t.index ["user_profile_id"], name: "index_user_likes_on_user_profile_id"
  end

  create_table "user_profiles", force: :cascade do |t|
    t.string "nickname"
    t.date "date_of_birth"
    t.date "date_of_registration"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_profiles_on_user_id"
  end

  create_table "user_watch_laters", force: :cascade do |t|
    t.bigint "user_profile_id", null: false
    t.bigint "film_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["film_id"], name: "index_user_watch_laters_on_film_id"
    t.index ["user_profile_id"], name: "index_user_watch_laters_on_user_profile_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "cast_films", "casts"
  add_foreign_key "cast_films", "films"
  add_foreign_key "casts", "roles"
  add_foreign_key "comments", "films"
  add_foreign_key "comments", "user_profiles"
  add_foreign_key "country_films", "countries"
  add_foreign_key "country_films", "films"
  add_foreign_key "films", "maturity_ratings"
  add_foreign_key "genre_films", "films"
  add_foreign_key "genre_films", "genres"
  add_foreign_key "ratings", "films"
  add_foreign_key "ratings", "user_profiles"
  add_foreign_key "user_histories", "films"
  add_foreign_key "user_histories", "user_profiles"
  add_foreign_key "user_likes", "films"
  add_foreign_key "user_likes", "user_profiles"
  add_foreign_key "user_profiles", "users"
  add_foreign_key "user_watch_laters", "films"
  add_foreign_key "user_watch_laters", "user_profiles"
end
