class FoodSerializer < ActiveModel::Serializer
   attributes :id, :name, :food_group, :nutrient, :user_id, :meal_id

   has_one :user
   has_one :meal
end