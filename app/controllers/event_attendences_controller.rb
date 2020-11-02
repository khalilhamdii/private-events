class EventAttendencesController < ApplicationController
  def create
    @event_attendence = EventAttendence.new(attended_event_id: params[:id], attendee_id: current_user.id)
    @event_attendence.save
    redirect_to signup_path
  end

  # def create
  #   @event_attendence = EventAttendence.new
  #   @event_attendence.attended_event_id = params["event_id"]
  #   @event_attendence.attendee_id = current_user.id
  #   @event_attendence.save
  # end

  # def create
  #   @event_attendence = EventAttendence.new(event_attendence_params)
  # end

  # private

  # def event_attendence_params
  #   params.require(:event_attendence).permit(:event_id, :user_id)
  # end
end
