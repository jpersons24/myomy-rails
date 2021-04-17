class FoodsController < ApplicationController

   def index
      foods = Food.all
      render json: foods
   end

   def show
      food = Food.find(params[:id])
      render json: food
   end

   def create
      food = Food.create(food_params)
      render json: food
   end

   private

   def food_params
      params.permit(:name, :food_group, :nutrient, :meal_id)
   end

end
