class UserSerializer < ActiveModel::Serializer
   attributes :id, :username, :password

   has_many :workouts
   has_many :meals
end