class CreateWeeks < ActiveRecord::Migration[6.1]
  def change
    create_table :weeks do |t|
      t.date :start
      t.date :finish

      t.timestamps
    end
  end
end
