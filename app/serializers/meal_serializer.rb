class MealSerializer < ActiveModel::Serializer
   attributes :id, :date, :name, :description

   has_many :foods
end