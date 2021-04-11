class Week < ApplicationRecord
   has_many :workouts, dependent: :destroy
   has_many :users, through: :workouts
end
