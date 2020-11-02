class EventAttendencesController < ApplicationController
  def new
    @event_attendence = EventAttendence.new
  end

  def create
    @event_attendence = EventAttendence.new
    @event_attendence.attended_event_id = params["event_id"]
    @event_attendence.attendee_id = current_user.id
    @event_attendence.save
  end
end
