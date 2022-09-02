class TeamsController < ApplicationController
  def index
  end

  def new
    @event = Event.find(params[:event_id])
    @team = Team.new
    @select_player = SelectPlayer.new
  end

  def create
    @event = Event.find(params[:event_id])
    @team = Team.new(params_team)
    @team.event = @event
    if @team.gender == @event.event_gender && @team.nb_player == @event.nb_players_team
      if @team.save!
        redirect_to new_team_select_player_path(@team)
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def edit
    @event = Event.find(params[:event_id])
    @team = Team.find(params[:team_id])
  end

  def update
    @event = Event.find(params[:event_id])
    @team = Team.find(params[:team_id])
    @team.update(params_team)
    # No need for app/views/restaurants/update.html.erb
    redirect_to event_path(@event)
  end

  def destroy
    @team.destroy
    redirect_to event_path, status: :see_other
  end

  private

  def params_team
    params.require(:team).permit(:team_name, :nb_player, :gender)
  end
end
