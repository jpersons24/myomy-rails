class MealsController < ApplicationController

   def index
      meals = Meal.all
      render json: meals
   end

   def show
      meal = Meal.find(params[:id])
      render json: meal
   end

   def create
      meal = Meal.create(meal_params)
      render json: meal
   end

   private

   def meal_params
      params.permit(:date, :name, :description, :user_id)
   end

end
