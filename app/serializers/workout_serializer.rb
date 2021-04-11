class WorkoutSerializer < ActiveModel::Serializer 
   attributes :id, :date, :duration, :user_id, :workout_type

   has_many :exercises
   has_one :user
end