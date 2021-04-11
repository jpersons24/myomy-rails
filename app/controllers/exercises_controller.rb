class ExercisesController < ApplicationController

   def index
      exercises = Exercise.all
      render json: exercises
   end

   def show
      exercise = Exercise.find(params[:id])
      render json: exercise
   end

   def destroy
      exercise = Exercise.find(params[:id])
      exercise.destroy
   end

end
