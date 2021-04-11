class UsersController < ApplicationController
   # :authenticate method is inherited from Application Controller
   before_action :authenticate, only: [:me, :update]

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
      # fake login
      user = User.second
      render json: user

      # true login
      # user = User.find_by(username: params[:username])
      # if user && user.authenticate(params[:password])
      #    render json: user
      # else
      #    render json: { errors: ["Invalid username or password"] }, status: :unauthorized
      # end
   end

   # GET /me
   def me
      # check some identifying info about request (token header)
      render json: @current_user
   end

   # PATCH /me
   def update
      @current_user.update(username: params[:username], profile_img: params[:profile_img])
      render json: @current_user
   end


end
