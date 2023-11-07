class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to events_index_path, notice: 'Commentaire créé avec succès.'
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end
  
  
  def edit
    @event = Event.find(params[:id])
  end
end

def update
  @event = Event.find(params[:id])
  if @event.update(event_params)
    redirect_to events_show_path, notice: 'Publication mise à jour avec succès.'
  else
    render :edit
  end
end