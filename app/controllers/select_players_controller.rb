class SelectPlayersController < ApplicationController

  def new
    @team = Team.find(params[:team_id])
    @select_player = SelectPlayer.new
    @users = User.all.sort
  end

  def create
    @team = Team.find(params[:team_id])
    @user = User.find(params[:select_player][:user_id])

    @select = SelectPlayer.new(user_id: @user.id, team_id: @team.id)
    @select.save!
    respond_to do |format|
      format.html { redirect_to new_team_select_player_path(@team) }
      format.text { render partial: "select_players/form_player", locals: { team: @team }, formats: [:html] }
    end
  end

  def destroy
    @select_destroy = SelectPlayer.find(params[:id])
    @select_destroy.destroy
  end
end
