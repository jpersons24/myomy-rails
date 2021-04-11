class DropWeeksTable < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :workouts, :weeks
    drop_table :weeks
  end
end
