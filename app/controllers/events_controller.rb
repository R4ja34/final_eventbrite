class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  
  def create
    if user_signed_in?
      @event = current_user.events.build(event_params)
      @event.admin_id = current_user.id
      if @event.save
        redirect_to events_path, notice: "Événement créé avec succès."
      else
        render :new
      end
    else
      redirect_to new_user_session_path, notice: "Vous devez être connecté pour créer un nouvel événement."
    end
  end
  

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to events_show_path(@event), notice: 'Événement mis à jour avec succès.'
    else
      render :edit
    end
  end

  private
  
  def event_params
    params.require(:event).permit(:title, :description, :start_date, :duration, :price, :location, :admin)
  end
  
end


