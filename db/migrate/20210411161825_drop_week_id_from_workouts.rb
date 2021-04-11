class DropWeekIdFromWorkouts < ActiveRecord::Migration[6.1]
  def change
    remove_column :workouts, :week_id, :bigint
  end
end
