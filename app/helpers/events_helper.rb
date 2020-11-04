module EventsHelper
  def button(event)
     if logged_in?
      if !EventAttendence.exists?(attendee_id: current_user.id,attended_event_id: event.id) 
        render 'attendence_button', :event => event
      else 
        content_tag(:button, "Attend", class: 'btn btn-success float-right mt-2', disabled: true)
      end
    end
  end

end
