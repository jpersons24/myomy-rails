class WeekSerializer < ActiveModel::Serializer
   attributes :id, :start, :finish

   has_many :workouts
end
