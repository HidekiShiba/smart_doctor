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

ActiveRecord::Schema.define(version: 2020_12_14_063828) do

  create_table "reservations", force: :cascade do |t|
    t.date "reservation_date", null: false
    t.time "reservation_time", null: false
    t.integer "consultation_count", null: false
    t.string "symptoms", default: "", null: false
    t.string "body_parts", default: "", null: false
    t.date "starting_point", null: false
    t.integer "treatment", null: false
    t.string "prescription", default: ""
    t.integer "side_effects"
    t.string "other_diseases", default: ""
    t.string "hospital_name", default: ""
    t.integer "pregnancy", null: false
    t.integer "purpose", null: false
    t.string "request", default: "", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name", default: "", null: false
    t.date "birth_date", null: false
    t.integer "sex", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "profile_image_id"
    t.boolean "admin", default: false
    t.string "kana"
    t.string "tel"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
