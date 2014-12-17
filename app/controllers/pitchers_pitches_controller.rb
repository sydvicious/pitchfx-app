class PitchersPitchesController < ApplicationController
  def index
    @pitchers = PitchEvent.select('pitcher_id, count(*) as count').group('pitcher_id').order('pitcher_id asc')
  end
end
