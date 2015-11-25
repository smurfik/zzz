class SleepStatsController < ApplicationController

  def index
    @stats = SleepStat.all.order(:created_at)
  end

  def create
    @stat = SleepStat.new(params.require(:stat).permit(:hours, :mood))
    if @stat.save
      redirect_to sleep_stats_path
    else
      @stats = SleepStat.all.order(:created_at)
      render 'index'
    end
  end

  def remove_stat
    @stat = SleepStat.find(params[:id])
    @stat.destroy
    redirect_to sleep_stats_path
  end

  def update
    @stat = SleepStat.find(params[:id])
    @stat.hours = params[:stat][:hours]
    @stat.mood = params[:stat][:mood]
    if @stat.save
      redirect_to sleep_stats_path
    else
      @stats = SleepStat.all.order(:created_at)
      render 'index'
    end
  end

end
