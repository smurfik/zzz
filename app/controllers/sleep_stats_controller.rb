class SleepStatsController < ActionController::Base

  def index
    @sleep_stats = SleepStat.all
  end

end
