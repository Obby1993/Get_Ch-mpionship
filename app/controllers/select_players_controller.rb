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
      format.html { new_team_select_player_path(@team) }
      format.text { render partial: "select_player/form_player", locals: {select_player: @select_player}, formats: [:html] }
    end
    # if @select.save!
    #   redirect_to event_path(@team.event)
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  def movie_params
    params.require(:select_player).permit(:user_id, :team_id)
  end
end
