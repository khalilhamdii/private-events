class EventAttendencesController < ApplicationController
  def new
    @event_attendence = EventAttendence.new
  end

  def create
     @event_attendence = EventAttendence.create(event_attendence_params)
  end

  private

  def event_attendence_params
    params.require(:event_attendence).permit(:attendee_id, :attended_event_id)
  end
end
