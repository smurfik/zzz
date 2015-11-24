class SleepStatsController < ApplicationController

  def index
    @stats = SleepStat.all
  end

  def create
    @stat = SleepStat.new(params.require(:stat).permit(:hours))
    if @stat.save
      redirect_to sleep_stats_path
    else
      @stats = SleepStat.all
      render 'index'
    end
  end

  def remove_stat
    @stat = SleepStat.find(params[:id])
    @stat.destroy
    redirect_to sleep_stats_path
  end

end
