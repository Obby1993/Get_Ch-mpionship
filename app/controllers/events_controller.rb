class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all

  # The `geocoded` scope filters only flats with coordinates
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        image_url: helpers.asset_url("event-default.png")
      }
    end
  end

  def show
    @teams = Team.where(event_id: params[:id])
    @event_map = Event.where(id: params[:id])
    @markers = @event_map.geocoded.map do |e|
      {
        lat: e.latitude,
        lng: e.longitude
      }
    end
  end


  private

  def set_event
    @event = Event.find(params[:id])
  end
end
