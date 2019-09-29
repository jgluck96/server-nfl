class AuthController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    if user
      render json: {user: UserSerializer.new(user)}
    else
      render json: {errors: 'Please enter the correct Username.'}
    end
  end
end
