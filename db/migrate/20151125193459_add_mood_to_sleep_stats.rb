class AddMoodToSleepStats < ActiveRecord::Migration
  def change
    add_column :sleep_stats, :mood, :string
    SleepStat.reset_column_information
    SleepStat.update_all(mood: "great")
  end
end
