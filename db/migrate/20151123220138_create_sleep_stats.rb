class CreateSleepStats < ActiveRecord::Migration
  def change
    create_table :sleep_stats do |t|
      t.integer :hours

      t.timestamps null: false
    end
  end
end
