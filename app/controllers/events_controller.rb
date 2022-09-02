class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @events = Event.where("activity ILIKE ?", "%#{params[:query]}%")
      if params[:event_address].present?
        @events = @events.where("event_address ILIKE ?", "%#{params[:event_address]}%")
      end
    elsif params[:event_address].present?
      @events = Event.where("event_address ILIKE ?", "%#{params[:event_address]}%")
    else
      @events = Event.all
    end
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
    @teams = Team.where(event_id: params[:id])
    @event_map = Event.where(id: params[:id])
    @markers = @event_map.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window: render_to_string(partial: "info_window", locals: {event: event}),
        image_url: helpers.asset_url("pointer.png")
      }
    end
  end


  private

  def set_event
    @event = Event.find(params[:id])
  end
end
