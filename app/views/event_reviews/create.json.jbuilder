if @event_review.persisted?
  json.form render(partial: "event_reviews/form", formats: :html, locals: { event: @event, event_review: EventReview.new })
  json.inserted_item render(partial: "events/event_review", formats: :html, locals: {  event: @event, event_review: @event_review })
else
  json.form render(partial: "event_reviews/form", formats: :html, locals: {  event_review: @event_review })
end
