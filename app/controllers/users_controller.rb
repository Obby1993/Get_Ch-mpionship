class UsersController < ApplicationController

  def show
    @events = Event.where(user_id: params[:id])
    @players = SelectPlayer.where(user_id: params[:id])
    @players.each do |player|
      @player_confirmation = player.confirmation
    end
    @user = User.find(params[:id])
    @review = Review.new
  end
end
