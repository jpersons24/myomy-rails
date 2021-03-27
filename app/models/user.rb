class User < ApplicationRecord
   has_many :workouts
   has_many :weeks, through: :workouts
   has_many :foods
   has_many :meals, through: :foods
end
