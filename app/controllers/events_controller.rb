class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all

  # The `geocoded` scope filters only flats with coordinates
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window: render_to_string(partial: "info_window", locals: {event: event}),
        image_url: helpers.asset_url("pointer.png")
      }
    end
  end

  def show

  end


  private

  def set_event
    @event = Event.find(params[:id])
  end
end
