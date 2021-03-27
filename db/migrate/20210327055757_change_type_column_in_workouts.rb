class ChangeTypeColumnInWorkouts < ActiveRecord::Migration[6.1]
  def change
    remove_column :workouts, :type, :string
    add_column :workouts, :workout_type, :string
  end
end
