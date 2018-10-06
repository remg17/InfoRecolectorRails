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

ActiveRecord::Schema.define(version: 20181006210314) do

  create_table "recycling_points", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "route_schedules", force: :cascade do |t|
    t.integer  "week_id"
    t.integer  "route_id"
    t.datetime "timStart"
    t.datetime "timEnd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["route_id"], name: "index_route_schedules_on_route_id"
    t.index ["week_id"], name: "index_route_schedules_on_week_id"
  end

  create_table "route_stops", force: :cascade do |t|
    t.integer  "stop_id"
    t.integer  "route_id"
    t.integer  "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["route_id"], name: "index_route_stops_on_route_id"
    t.index ["stop_id"], name: "index_route_stops_on_stop_id"
  end

  create_table "routes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stops", force: :cascade do |t|
    t.string   "address"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "truck_routes", force: :cascade do |t|
    t.integer  "truck_id"
    t.integer  "route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["route_id"], name: "index_truck_routes_on_route_id"
    t.index ["truck_id"], name: "index_truck_routes_on_truck_id"
  end

  create_table "trucks", force: :cascade do |t|
    t.integer  "typetruck_id"
    t.string   "name"
    t.string   "licensePlate"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["typetruck_id"], name: "index_trucks_on_typetruck_id"
  end

  create_table "type_trucks", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "name"
    t.string   "lastname"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weeks", force: :cascade do |t|
    t.string   "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
