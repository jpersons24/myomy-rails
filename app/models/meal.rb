class Meal < ApplicationRecord
   belongs_to :user
   has_many :foods
   has_many :foods, dependent: :destroy
end
