class SleepStatsController < ApplicationController

  def index
    @sleep_stats = SleepStat.all
  end

  def create
    @sleep_stat = SleepStat.new
    @sleep_stat.hours = params[:hours]
    if @sleep_stat.save
      redirect_to sleep_stats_path
    else
      @sleep_stats = SleepStat.all
      render 'index'
    end
  end

  def remove_stat
    @sleep_stat = SleepStat.find(params[:id])
    @sleep_stat.destroy
    redirect_to sleep_stats_path
  end

end
