class UsersController < ApplicationController
   # :authenticate method is inherited from Application Controller
   # before_action :authenticate, only [:me]

   def index
      users = User.all 
      render json: users
   end

   def show
      user = User.find(params[:id])
      render json: user
   end

   # POST /login
   def login
      user = User.second
      render json: user
   end

   # GET /me
   def me
      # check some identifying info about request (token header)
      user = User.second
      render json: user
   end

   # PATCH /me
   def update
      user = User.second
      user.update(username: params[:username], profile_img: params[:profile_img])
      render json: user
   end


end
