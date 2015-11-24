class SleepStat < ActiveRecord::Base

  validates :hours, presence: true

  def clean_time
    created_at.in_time_zone("Pacific Time (US & Canada)").strftime("%m-%e-%y %H:%M")
  end

end
