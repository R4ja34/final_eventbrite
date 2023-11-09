# attendances_controller.rb
class AttendancesController < ApplicationController
  before_action :authenticate_user!

  def index
    # Logique pour afficher la liste des participations (si nécessaire)
  end
  def show
    @attendance = Attendance.find(params[:id])
  end
  def edit
    @attendance = Attendance.find(params[:id])
  end
end
