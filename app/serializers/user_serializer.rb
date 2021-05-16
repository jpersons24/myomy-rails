class UserSerializer < ActiveModel::Serializer
   attributes :id, :username, :profile_img, :height_feet, :height_inches, :weight, :age

   has_many :workouts
   has_many :meals
end