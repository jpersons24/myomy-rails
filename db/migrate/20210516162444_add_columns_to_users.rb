class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :weight, :integer
    add_column :users, :height_feet, :integer
    add_column :users, :height_inches, :integer 
    add_column :users, :age, :integer
  end
end
