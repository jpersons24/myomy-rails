class FoodSerializer < ActiveModel::Serializer
   attributes :id, :name, :food_group, :nutrient, :meal_id

   has_one :meal
end