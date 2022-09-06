class UsersController < ApplicationController

  def show
  @events = Event.where(user_id: params[:id])
  @player = SelectPlayer.where(user_id: params[:id])
  @user = User.find(params[:id])
  end

end
