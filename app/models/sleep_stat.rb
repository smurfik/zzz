class SleepStat < ActiveRecord::Base

  validates :hours, presence: true

  def clean_time
    created_at.strftime("%m-%e-%y %H:%M")
  end

end
