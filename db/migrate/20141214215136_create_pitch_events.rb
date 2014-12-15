class CreatePitchEvents < ActiveRecord::Migration
  def change
    create_table :pitch_events do |t|
      t.integer :game_id
      t.string :game_string, limit: 10
      #Obfuscating data causes typechecking to fail.
      #t.timestamp :game_date
      t.string :game_date
      t.string :venue_name, limit: 30
      t.string :venue_city, limit: 30 
      t.string :venue_state, limit: 30
      t.integer :venue_mlb_id
      t.string :sv_pitch_id, limit: 30
      t.string :home_team_location, limit: 30
      t.string :home_team, limit: 30
      t.integer :home_team_mlb_id
      t.string :away_team_location, limit: 30
      t.string :away_team, limit: 30
      t.string :away_team_mlb_id
      t.string :home_team_runs
      t.integer :away_team_runs
      t.integer :inning
      t.integer :top_of_inning
      t.integer :game_atbat_number
      t.integer :pitch_per_atbat
      t.integer :pitch_per_game
      t.string :pitcher_first_name, limit: 30
      t.string :pitcher_last_name, limit: 30
      # pitcher_id is a string - obfuscation
      t.string :pitcher_id , limit: 30
      t.string :pitcher_mlb_id, limit: 30
      t.string :pitcher_throws, limit: 1     
      t.string :batter_first_name, limit: 30
      t.string :batter_last_name, limit: 30
      # batter_id string - obfuscation
      t.string :batter_id, limit: 30
      t.string :batter_mlb_id, limit: 30
      t.string :batter_stance, limit: 1
      t.float :strike_zone_top
      t.float :strike_zone_bottom
      t.string :event_code, limit: 30
      # Note that the schema description given said that event_description was VARCHAR[100], but the data given does not fit.
      t.string :event_description
      t.integer :umpire_id
      t.string :umpire_mlb_id, limit: 30
      t.integer :balls    
      t.integer :strikes
      t.integer :outs
      # Data has catcher's interference coded as "catcher_interf", which is 14 characters.
      t.string :pitch_result, limit: 15
      t.string :pitch_type, limit: 2
      t.integer :timecode, limit: 8
      t.float :pitch_initial_speed
      t.float :pitch_speed_at_homeplate
      t.float :pitch_arc_break_x
      t.float :pitch_arc_break_z
      t.float :pitch_deflection_break_x
      t.float :pitch_deflection_break_z
      t.float :pitch_break_angle
      t.float :pitch_spin_rate
      t.float :pitch_plate_location_x
      t.float :pitch_plate_location_y
      t.float :pitch_plate_location_z
      t.float :pitch_initial_position_x
      t.float :pitch_initial_position_y
      t.float :pitch_initial_position_z
      t.float :pitch_initial_velocity_x
      t.float :pitch_initial_velocity_y
      t.float :pitch_initial_velocity_z
      t.float :pitch_acceleration_x
      t.float :pitch_acceleration_y
      t.float :pitch_acceleration_z
      t.float :pitch_average_lop
      t.float :command_pitch_location_x
      t.float :command_pitch_location_y
      t.float :command_pitch_location_z
      t.float :command_mitt_location_x
      t.float :command_mitt_location_y
      t.float :command_mitt_location_z
      t.float :command_delta_x
      t.float :command_delta_z
      t.float :command_delta_magnitude
      t.float :hit_initial_speed
      t.float :hit_vertical_angle
      t.float :hit_horizontal_angle
      t.float :hit_initial_contact_point_x
      t.float :hit_initial_contact_point_y
      t.float :hit_initial_contact_point_z
      t.float :hit_initial_velocity_x
      t.float :hit_initial_velocity_y
      t.float :hit_initial_velocity_z
      t.float :hit_average_lop
      t.integer :hit_chopper, limit: 1
      t.timestamp :date_updated
      t.timestamp :date_deleted

      t.timestamps
    end
  end
end
