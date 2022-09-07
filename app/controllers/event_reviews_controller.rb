class EventReviewsController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @event_review = EventReview.new(event_review_params)
    @event_review.event = @event
    @event_review.reviewer = current_user.first_name

    respond_to do |format|
      if @event_review.save
        format.html { redirect_to event_path(@event) }
        format.json # Follow the classic Rails flow and look for a create.json view
      else
        format.html {render "event/show", status: :unprocessable_entity}
        format.json # Follow the classic Rails flow and look for a create.json view
      end
    end
  end

  private

  def event_review_params
    params.require(:event_review).permit(:content, :reviewer, :created_at)
  end

end
