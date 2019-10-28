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

ActiveRecord::Schema.define(version: 2019_10_26_232557) do

  create_table "games", force: :cascade do |t|
    t.string "date"
    t.string "home"
    t.string "away"
    t.integer "home_score"
    t.integer "away_score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "time"
    t.index ["away"], name: "index_games_on_away"
    t.index ["home"], name: "index_games_on_home"
  end

  create_table "games_teams", id: false, force: :cascade do |t|
    t.integer "team_id"
    t.integer "game_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "points"
    t.float "assists"
    t.float "rebounds"
    t.integer "team_id"
    t.string "year"
    t.string "position"
    t.string "team_name"
    t.float "blocks"
    t.float "steals"
    t.float "twoPtFgAtt"
    t.float "twoPtFgMade"
    t.float "freeThrowAtt"
    t.float "freeThrowMade"
    t.float "threePtFgAtt"
    t.float "threePtFgMade"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "abbr"
    t.string "year"
    t.integer "games_played"
    t.integer "wins"
    t.integer "losses"
  end

  add_foreign_key "players", "teams"
end
