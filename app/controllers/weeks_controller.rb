class WeeksController < ApplicationController

   def index
      weeks = Week.all
      render json: weeks
   end

   def show
      week = Week.find(params[:id])
      render json: week
   end

   def destroy
      week = Week.find(params[:id])
      week.destroy
   end

end
