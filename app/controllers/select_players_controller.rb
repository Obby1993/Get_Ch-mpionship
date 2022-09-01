class SelectPlayersController < ApplicationController


  def create
    @user = User.find(first_name:, last_name: )
    @select.user = @user
    @team = Team.find(params[:team_id])
    @select.team = @team
    @select = SelectPlayer.new
  end

  private

  def params_select_player
    # params.require(:select_player).permit(:user_id)
  end
end
