class PickemsController < ApplicationController

  def create
    pickem = Pickem.create(user_id: params[:user_id], teams: params[:teams], week: params[:week])
    render json: pickem
  end
end
