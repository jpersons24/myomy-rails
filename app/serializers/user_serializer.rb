class UserSerializer < ActiveModel::Serializer
   attributes :id, :username, :profile_img

   has_many :workouts
   has_many :meals
end