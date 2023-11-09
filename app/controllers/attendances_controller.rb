class AttendancesController < ApplicationController
  before_action :authenticate_user!

  def index
  end


  # def new
  #   @event = Event.find(params[:event_id])
  #   @attendance = Attendance.new
  # end

  # def create
  #   @event = Event.find(params[:event_id])
  #   @attendance = @event.attendances.build(user: current_user)

  #   # Ajoute le code pour gérer le paiement avec Stripe ici
  #   # Assure-toi que le paiement est réussi avant de créer la participation

  #   if @attendance.save
  #     redirect_to @event, notice: 'Inscription réussie!'
  #   else
  #     render :new
  #   end
  # end

  def show
  end

  def edit
  end
end
