class UsersController < ApplicationController

  def show
    @events = Event.where(user_id: params[:id])
    @players = SelectPlayer.where(user_id: params[:id])
    @user = User.find(params[:id])
    @review = Review.new

    # @teams = Team.where(current_user)
  end
end
