class SleepStatsController < ActionController::Base

  def index
    @sleep_stats = SleepStat.all
  end

  def create
    @sleep_stat = SleepStat.new
    @sleep_stat.hours = params[:hours]
    raise
  end

end
