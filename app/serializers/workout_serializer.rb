class WorkoutSerializer < ActiveModel::Serializer 
   attributes :id, :date, :duration, :week_id, :user_id, :workout_type

   has_many :exercises
   has_one :week
   has_one :user
end