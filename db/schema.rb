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

ActiveRecord::Schema.define(version: 20141214215136) do

  create_table "pitch_events", force: true do |t|
    t.integer  "game_id"
    t.string   "game_string",                 limit: 10
    t.string   "game_date"
    t.string   "venue_name",                  limit: 30
    t.string   "venue_city",                  limit: 30
    t.string   "venue_state",                 limit: 30
    t.integer  "venue_mlb_id"
    t.string   "sv_pitch_id",                 limit: 30
    t.string   "home_team_location",          limit: 30
    t.string   "home_team",                   limit: 30
    t.integer  "home_team_mlb_id"
    t.string   "away_team_location",          limit: 30
    t.string   "away_team",                   limit: 30
    t.string   "away_team_mlb_id"
    t.string   "home_team_runs"
    t.integer  "away_team_runs"
    t.integer  "inning"
    t.integer  "top_of_inning"
    t.integer  "game_atbat_number"
    t.integer  "pitch_per_atbat"
    t.integer  "pitch_per_game"
    t.string   "pitcher_first_name",          limit: 30
    t.string   "pitcher_last_name",           limit: 30
    t.string   "pitcher_id",                  limit: 30
    t.string   "pitcher_mlb_id",              limit: 30
    t.string   "pitcher_throws",              limit: 1
    t.string   "batter_first_name",           limit: 30
    t.string   "batter_last_name",            limit: 30
    t.string   "batter_id",                   limit: 30
    t.string   "batter_mlb_id",               limit: 30
    t.string   "batter_stance",               limit: 1
    t.float    "strike_zone_top",             limit: 24
    t.float    "strike_zone_bottom",          limit: 24
    t.string   "event_code",                  limit: 30
    t.string   "event_description"
    t.integer  "umpire_id"
    t.string   "umpire_mlb_id",               limit: 30
    t.integer  "balls"
    t.integer  "strikes"
    t.integer  "outs"
    t.string   "pitch_result",                limit: 15
    t.string   "pitch_type",                  limit: 2
    t.integer  "timecode",                    limit: 8
    t.float    "pitch_initial_speed",         limit: 24
    t.float    "pitch_speed_at_homeplate",    limit: 24
    t.float    "pitch_arc_break_x",           limit: 24
    t.float    "pitch_arc_break_z",           limit: 24
    t.float    "pitch_deflection_break_x",    limit: 24
    t.float    "pitch_deflection_break_z",    limit: 24
    t.float    "pitch_break_angle",           limit: 24
    t.float    "pitch_spin_rate",             limit: 24
    t.float    "pitch_plate_location_x",      limit: 24
    t.float    "pitch_plate_location_y",      limit: 24
    t.float    "pitch_plate_location_z",      limit: 24
    t.float    "pitch_initial_position_x",    limit: 24
    t.float    "pitch_initial_position_y",    limit: 24
    t.float    "pitch_initial_position_z",    limit: 24
    t.float    "pitch_initial_velocity_x",    limit: 24
    t.float    "pitch_initial_velocity_y",    limit: 24
    t.float    "pitch_initial_velocity_z",    limit: 24
    t.float    "pitch_acceleration_x",        limit: 24
    t.float    "pitch_acceleration_y",        limit: 24
    t.float    "pitch_acceleration_z",        limit: 24
    t.float    "pitch_average_lop",           limit: 24
    t.float    "command_pitch_location_x",    limit: 24
    t.float    "command_pitch_location_y",    limit: 24
    t.float    "command_pitch_location_z",    limit: 24
    t.float    "command_mitt_location_x",     limit: 24
    t.float    "command_mitt_location_y",     limit: 24
    t.float    "command_mitt_location_z",     limit: 24
    t.float    "command_delta_x",             limit: 24
    t.float    "command_delta_z",             limit: 24
    t.float    "command_delta_magnitude",     limit: 24
    t.float    "hit_initial_speed",           limit: 24
    t.float    "hit_vertical_angle",          limit: 24
    t.float    "hit_horizontal_angle",        limit: 24
    t.float    "hit_initial_contact_point_x", limit: 24
    t.float    "hit_initial_contact_point_y", limit: 24
    t.float    "hit_initial_contact_point_z", limit: 24
    t.float    "hit_initial_velocity_x",      limit: 24
    t.float    "hit_initial_velocity_y",      limit: 24
    t.float    "hit_initial_velocity_z",      limit: 24
    t.float    "hit_average_lop",             limit: 24
    t.integer  "hit_chopper",                 limit: 1
    t.datetime "date_updated"
    t.datetime "date_deleted"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pitchfx_data", id: false, force: true do |t|
    t.integer  "game_id"
    t.string   "game_string",                 limit: 10
    t.datetime "game_date"
    t.string   "venue_name",                  limit: 30
    t.string   "venue_city",                  limit: 30
    t.string   "venue_state",                 limit: 30
    t.integer  "venue_mlb_id"
    t.string   "sv_pitch_id",                 limit: 10
    t.string   "home_team_location",          limit: 30
    t.string   "home_team",                   limit: 30
    t.integer  "home_team_mlb_id"
    t.string   "away_team_location",          limit: 30
    t.string   "away_team",                   limit: 30
    t.integer  "away_team_mlb_id"
    t.integer  "home_team_runs"
    t.integer  "away_team_runs"
    t.integer  "inning"
    t.integer  "top_of_inning"
    t.integer  "game_atbat_number"
    t.integer  "pitch_per_atbat"
    t.integer  "pitch_per_game"
    t.string   "pitcher_first_name",          limit: 30
    t.string   "pitcher_last_name",           limit: 30
    t.integer  "pitcher_id"
    t.string   "pitcher_mlb_id",              limit: 30
    t.string   "pitcher_throws",              limit: 1
    t.string   "batter_first_name",           limit: 30
    t.string   "batter_last_name",            limit: 30
    t.integer  "batter_id"
    t.string   "batter_mlb_id",               limit: 30
    t.string   "batter_stance",               limit: 1
    t.float    "strike_zone_top",             limit: 24
    t.float    "strike_zone_bottom",          limit: 24
    t.string   "event_code",                  limit: 30
    t.string   "event_description",           limit: 100
    t.integer  "umpire_id"
    t.string   "umpire_mlb_id",               limit: 30
    t.integer  "balls"
    t.integer  "strikes"
    t.integer  "outs"
    t.string   "pitch_result",                limit: 2
    t.string   "pitch_type",                  limit: 2
    t.integer  "timecode",                    limit: 8
    t.float    "pitch_initial_speed",         limit: 24
    t.float    "pitch_speed_at_homeplate",    limit: 24
    t.float    "pitch_arc_break_x",           limit: 24
    t.float    "pitch_arc_break_z",           limit: 24
    t.float    "pitch_deflection_break_x",    limit: 24
    t.float    "pitch_deflection_break_z",    limit: 24
    t.float    "pitch_break_angle",           limit: 24
    t.float    "pitch_spin_rate",             limit: 24
    t.float    "pitch_plate_location_x",      limit: 24
    t.float    "pitch_plate_location_y",      limit: 24
    t.float    "pitch_plate_location_z",      limit: 24
    t.float    "pitch_initial_position_x",    limit: 24
    t.float    "pitch_initial_position_y",    limit: 24
    t.float    "pitch_initial_position_z",    limit: 24
    t.float    "pitch_initial_velocity_x",    limit: 24
    t.float    "pitch_initial_velocity_y",    limit: 24
    t.float    "pitch_initial_velocity_z",    limit: 24
    t.float    "pitch_acceleration_x",        limit: 24
    t.float    "pitch_acceleration_y",        limit: 24
    t.float    "pitch_acceleration_z",        limit: 24
    t.float    "pitch_average_lop",           limit: 24
    t.float    "command_pitch_location_x",    limit: 24
    t.float    "command_pitch_location_y",    limit: 24
    t.float    "command_pitch_location_z",    limit: 24
    t.float    "command_mitt_location_x",     limit: 24
    t.float    "command_mitt_location_y",     limit: 24
    t.float    "command_mitt_location_z",     limit: 24
    t.float    "command_delta_x",             limit: 24
    t.float    "command_delta_z",             limit: 24
    t.float    "command_delta_magnitude",     limit: 24
    t.float    "hit_initial_speed",           limit: 24
    t.float    "hit_vertical_angle",          limit: 24
    t.float    "hit_horizontal_angle",        limit: 24
    t.float    "hit_initial_contact_point_x", limit: 24
    t.float    "hit_initial_contact_point_y", limit: 24
    t.float    "hit_initial_contact_point_z", limit: 24
    t.float    "hit_initial_velocity_x",      limit: 24
    t.float    "hit_initial_velocity_y",      limit: 24
    t.float    "hit_initial_velocity_z",      limit: 24
    t.float    "hit_average_lop",             limit: 24
    t.integer  "hit_chopper"
    t.datetime "date_updated"
    t.datetime "date_deleted"
  end

end
