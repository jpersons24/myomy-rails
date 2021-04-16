class MealSerializer < ActiveModel::Serializer
   attributes :id, :date, :name, :description, :user_id
   has_many :foods
end