# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_10_175003) do

  create_table "ahoy_events", force: :cascade do |t|
    t.integer "visit_id"
    t.integer "user_id"
    t.string "name"
    t.text "properties"
    t.datetime "time"
    t.index ["name", "time"], name: "index_ahoy_events_on_name_and_time"
    t.index ["user_id"], name: "index_ahoy_events_on_user_id"
    t.index ["visit_id"], name: "index_ahoy_events_on_visit_id"
  end

  create_table "ahoy_visits", force: :cascade do |t|
    t.string "visit_token"
    t.string "visitor_token"
    t.integer "user_id"
    t.string "ip"
    t.text "user_agent"
    t.text "referrer"
    t.string "referring_domain"
    t.text "landing_page"
    t.string "browser"
    t.string "os"
    t.string "device_type"
    t.string "country"
    t.string "region"
    t.string "city"
    t.float "latitude"
    t.float "longitude"
    t.string "utm_source"
    t.string "utm_medium"
    t.string "utm_term"
    t.string "utm_content"
    t.string "utm_campaign"
    t.string "app_version"
    t.string "os_version"
    t.string "platform"
    t.datetime "started_at"
    t.index ["user_id"], name: "index_ahoy_visits_on_user_id"
    t.index ["visit_token"], name: "index_ahoy_visits_on_visit_token", unique: true
  end

  create_table "notes", force: :cascade do |t|
    t.integer "user_id"
    t.text "blog"
    t.string "img_url"
    t.string "title"
    t.index ["user_id"], name: "index_notes_on_user_id"
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.string "terrain"
    t.string "temp_range"
    t.string "vegetation"
    t.string "animals"
    t.string "local_beings"
    t.string "backpack"
    t.string "img_url"
    t.string "planet_img_url"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "planet_id"
    t.string "date_time"
    t.string "cost"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.integer "user_id"
    t.integer "planet_id"
    t.text "planet_review"
    t.string "img_url"
    t.string "rating"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.text "bio"
    t.string "age"
    t.string "img_url"
    t.string "username"
    t.string "password_digest"
  end

end
