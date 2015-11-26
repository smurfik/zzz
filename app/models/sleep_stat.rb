class SleepStat < ActiveRecord::Base

  validates :hours, presence: true, numericality: { only_integer: true }

  validates :mood, presence: true, format: { with: /\A\D+\z/, message: "only allows letters" }

  def clean_time
    created_at.in_time_zone("Pacific Time (US & Canada)").strftime("%m-%e-%y %H:%M")
  end

end
