class EventsController < ApplicationController

  def index
    @events = Event.all
    @events = Event.geocoded
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
    @event = Event.find(params[:id])
  end
end
