ActiveRecord::Schema.define(version: 2019_07_21_200815) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "geolocations", force: :cascade do |t|
    t.string "ip_or_hostname"
    t.string "country_code"
    t.string "country_name"
    t.string "region_code"
    t.string "region_name"
    t.string "city"
    t.string "zip_code"
    t.string "time_zone"
    t.string "latitude"
    t.string "longitude"
    t.string "metro_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email"
  end

end
