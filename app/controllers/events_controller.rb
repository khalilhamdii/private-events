class EventsController < ApplicationController
  def index
    @events = Event.all.order("created_at DESC")
    @event = Event.new
  end

  def show
    @events = Event.all
  end

  def create
    @event = current_user.created_events.build(event_params)
    respond_to do |format|
      if @event.save
        format.html { redirect_to root_path, notice: "Event was successfully created." }
      else
        format.html { render "form" }
      end
    end
  end

  def new
    @event = Event.new
  end

  def edit
  end

  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: "Event was successfully destroyed." }
    end
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :date, :description)
  end
end
