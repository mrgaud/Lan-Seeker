# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160125103052) do

  create_table "messages", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "user_name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "facebook_page"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "stats_file_name"
    t.string   "stats_content_type"
    t.integer  "stats_file_size"
    t.datetime "stats_updated_at"
    t.string   "GamesAttended_file_name"
    t.string   "GamesAttended_content_type"
    t.integer  "GamesAttended_file_size"
    t.datetime "GamesAttended_updated_at"
    t.string   "GamesHosted_file_name"
    t.string   "GamesHosted_content_type"
    t.integer  "GamesHosted_file_size"
    t.datetime "GamesHosted_updated_at"
    t.string   "PosReviews_file_name"
    t.string   "PosReviews_content_type"
    t.integer  "PosReviews_file_size"
    t.datetime "PosReviews_updated_at"
    t.string   "NegReviews_file_name"
    t.string   "NegReviews_content_type"
    t.integer  "NegReviews_file_size"
    t.datetime "NegReviews_updated_at"
    t.string   "badgesEarned_file_name"
    t.string   "badgesEarned_content_type"
    t.integer  "badgesEarned_file_size"
    t.datetime "badgesEarned_updated_at"
    t.string   "friends_file_name"
    t.string   "friends_content_type"
    t.integer  "friends_file_size"
    t.datetime "friends_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
