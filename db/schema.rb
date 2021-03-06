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

ActiveRecord::Schema.define(version: 20170725133059) do

  create_table "data_sources", force: :cascade do |t|
    t.boolean  "stil_active"
    t.string   "source_root_url"
    t.datetime "startdate"
    t.string   "name"
    t.string   "desc"
    t.string   "license"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "docker_image_location"
    t.string   "schedule_cron"
    t.string   "slug"
    t.datetime "enddate"
  end

  create_table "data_sources_measurements", force: :cascade do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "data_source_id"
    t.integer  "measurement_id"
  end

  add_index "data_sources_measurements", ["data_source_id"], name: "index_data_sources_measurements_on_data_source_id"
  add_index "data_sources_measurements", ["measurement_id"], name: "index_data_sources_measurements_on_measurement_id"

  create_table "data_sources_sensor_stations", id: false, force: :cascade do |t|
    t.integer "data_source_id",    null: false
    t.integer "sensor_station_id", null: false
  end

  add_index "data_sources_sensor_stations", ["data_source_id"], name: "index_data_sources_sensor_stations_on_data_source_id"
  add_index "data_sources_sensor_stations", ["sensor_station_id"], name: "index_data_sources_sensor_stations_on_sensor_station_id"

  create_table "measurements", force: :cascade do |t|
    t.string   "name"
    t.string   "desc"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "unit_category_id"
  end

  create_table "sensor_stations", force: :cascade do |t|
    t.string   "name"
    t.string   "desc"
    t.float    "lat"
    t.float    "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sensor_stations_sensors", id: false, force: :cascade do |t|
    t.integer "sensor_id",         null: false
    t.integer "sensor_station_id", null: false
  end

  add_index "sensor_stations_sensors", ["sensor_id"], name: "index_sensor_stations_sensors_on_sensor_id"
  add_index "sensor_stations_sensors", ["sensor_station_id"], name: "index_sensor_stations_sensors_on_sensor_station_id"

  create_table "sensors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
