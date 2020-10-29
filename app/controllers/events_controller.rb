class EventsController < ApplicationController
  def show
    @events = Event.all
  end

  def create
    @event = @user.events.build(event_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to root_path, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @event = @user.events.build
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:event, :user_id)
  end
end
