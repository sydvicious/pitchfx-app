# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

def read_csv(file)
  i = 0
  events = []
  CSV.foreach(file) do |row|
    if i == 0
      i += 1
      next
    end

    element = {
      :game_date => row[0],
      :pitcher_id => row[1],
      :inning => row[2],
      :top_of_inning => row[3],
      :game_atbat_number => row[4],
      :pitch_per_atbat => row[5],
      :pitch_per_game => row[6],
      :pitcher_throws => row[7],
      :batter_id => row[8],
      :batter_stance => row[9],
      :strike_zone_top => row[10],
      :strike_zone_bottom => row[11],
      :pitch_result => row[12],
      :event_code => row[13],
      :event_description => row[14],
      :pitch_type => row[15],
      :pitch_initial_speed => row[16],
      :pitch_speed_at_homeplate => row[17],
      :pitch_deflection_break_x => row[18],
      :pitch_deflection_break_z => row[19],
      :pitch_plate_location_x => row[20],
      :pitch_plate_location_z => row[21],
      :pitch_initial_position_x => row[22],
      :pitch_initial_position_z => row[23],
      :command_pitch_location_x => row[24],
      :command_pitch_location_z => row[25],
      :command_mitt_location_x => row[26],
      :command_mitt_location_z => row[27]
    }
    events.push(element)
    if (i % 1000) == 0
      puts "Writing up to #{i} records..."
      pitch_events = PitchEvent.create(events)
      events = []
    end
    i += 1
  end
  puts "Wrote #{i} records."
end

read_csv('commandfx_2014.csv')

