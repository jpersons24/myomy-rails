class RemoveUserIdFromFoodTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :foods, :user_id, :big_int
  end
end
