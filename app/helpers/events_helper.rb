# rubocop:disable Style/GuardClause

module EventsHelper

  def event_form
    if logged_in?
       render 'form'
    end
  end

  def button(event)
    if logged_in?
      if !EventAttendence.exists?(attendee_id: current_user.id, attended_event_id: event.id)
        render 'attendence_button', event: event
      else
        content_tag(:button, 'Attend', class: 'btn btn-success float-right mt-2', disabled: true)
      end
    end
  end
end

# rubocop:enable Style/GuardClause
