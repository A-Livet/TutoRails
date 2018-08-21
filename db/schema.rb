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

ActiveRecord::Schema.define(version: 2018_08_15_074209) do

  create_table "cast_members", force: :cascade do |t|
    t.string "name"
    t.string "role"
  end

  create_table "cast_members_movies", id: false, force: :cascade do |t|
    t.integer "cast_member_id", null: false
    t.integer "movie_id", null: false
    t.index ["cast_member_id"], name: "index_cast_members_movies_on_cast_member_id"
    t.index ["movie_id"], name: "index_cast_members_movies_on_movie_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "director"
  end

end
