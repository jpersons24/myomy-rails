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
      user = User.find_by(username: params[:username])
      if user && user.authenticate(params[:password])
         token = JWT.encode({ user_id: user.id }, 'my_secret', 'HS256')
         render json: { user: UserSerializer.new(user), token: token }
      else
         render json: { errors: ["Invalid username or password"] }, status: :unauthorized
      end
   end

   # POST /signup
   def signup
      user = User.create(user_params)
      if user.valid?
         token = JWT.encode({ user_id: user.id }, 'my_secret', 'HS256')
         render json: { user: UserSerializer.new(user), token: token }, status: :created
      else
         render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
      end
   end

   # GET /me
   def me
      render json: @current_user
   end

   # PATCH /me
   def update
      user = User.find(params[:id])
      user.update(user_params)
      render json: user
   end

   private

   def user_params
      params.permit(:username, :password, :profile_img, :height_feet, :height_inches, :weight, :age)
   end


end
