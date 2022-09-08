class SelectPlayersController < ApplicationController

  def index
    @selects = SelectPlayer.where(user_id: current_user)
  end

  def new
    @team = Team.find(params[:team_id])
    @select_player = SelectPlayer.new
    @users = User.all.sort
  end

  def create
    @team = Team.find(params[:team_id])
    @user = User.find(params[:select_player][:user_id])
    @select = SelectPlayer.new()
    @select.team = @team
    @select.user = @user
    @select.notification = "#{current_user.first_name} #{current_user.last_name} vous invite à participer à #{@team.event.event_name}, le #{@team.event.event_start}."
    @select.save!
    respond_to do |format|
      format.html { redirect_to new_team_select_player_path(@team) }
      format.text { render partial: "select_players/form_player", locals: { team: @team }, formats: [:html] }
    end
  end

  def edit
    @select = SelectPlayer.find(params[:id])
  end

  def reading
    @select = SelectPlayer.find(params[:id])
    @select.read = true
    if @select.save!
    # @user = User.find(121)
    # redirect_to user_path(@user)
      redirect_to user_path(current_user), status: :see_other
    end
  end

  def destroy
    @select_destroy = SelectPlayer.find(params[:id])
    @select_destroy.destroy
  end

  def validate
    @player = SelectPlayer.find(params[:id])
    @player.confirmation = true
    @player.save!
    redirect_to user_path(@player.user)
  end

  # def send_notification
  #   @players = SelectPlayer.where(params[:team_id])

  # end
end
