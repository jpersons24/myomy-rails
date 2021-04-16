class AddUserIdToMealsTable < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :foods, column: :user_id
    add_column :meals, :user_id, :integer
  end
end
