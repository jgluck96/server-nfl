class PickemsController < ApplicationController

  def create
    pickem = Pickem.create(user_id: params[:user_id], teams: params[:teams], week: params[:week])
    user = User.find(params[:user_id])
    render json: {user: UserSerializer.new(user)}
  end
end
