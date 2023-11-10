# attendances_controller.rb
class AttendancesController < ApplicationController
  before_action :authenticate_user!

  def index
    @event_id = params[:event_id]
    @event_title = params[:event_title]
    @attendances = Attendance.where(event_id: @event_id)
  end

  def show
    @attendance = Attendance.find(params[:id])
  end

  def edit
    @attendance = Attendance.find(params[:id])
  end
end