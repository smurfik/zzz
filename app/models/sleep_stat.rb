class SleepStat < ActiveRecord::Base

  def clean_time
    created_at.strftime("%m-%e-%y %H:%M")
  end

end
