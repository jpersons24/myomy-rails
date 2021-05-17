class ApplicationController < ActionController::API

   def authenticate
      # byebug
      # gets Authorization header value => returns array with two hashes
      auth_header = request.headers["Authorization"]
      # splits and gets Authorization array and last value => token
      token = auth_header.split.last
      # get payload of token using JWT library => returns hash with { "user_id": user ID }
      payload = JWT.decode(token, 'my_secret', true, { algorithm: 'HS256' })[0]
      # sets @current_user using ID from payload 
      @current_user = User.find_by(id: payload['user_id'])
   rescue
      render json: { errors: ["Not Authorized"] }, status: :unauthorized
   end
   
end
