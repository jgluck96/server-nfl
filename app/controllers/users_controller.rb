class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def create
    user = User.new(user_params)

    if user.valid?
      User.create(user_params)
      render json: UserSerializer.new(user)
    else
      render json: {errors: 'Username already exists, try a different one.'}
    end
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end
