class UserSerializer < ActiveModel::Serializer
   attributes :id, :username, :password_digest, :profile_img

   has_many :workouts
   has_many :meals
end