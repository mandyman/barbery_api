class AppointmentsController < ApplicationController
  def index
      @appointments = Appointment.all 
      render json: @appointments
  end 
  
  def show
      @appointments = Appointment.find(params[:id])
      render json: @appointments
  end 
  
  def create
      if Appointment.where(
        "date(appointment_date_time, 'localtime') = ?", 
        params[:appointment_date_time].to_date
        ).length() === 3
        return render json: { errors: { appointments: 'Cannot create more that 3 appointments for the same day' }}, status: :forbidden
      end
      @appointments = Appointment.create(
          client_name: params[:client_name],
          appointment_date_time: params[:appointment_date_time]
      )
      render json: @appointments
  end 
  
  def update
      @appointment = Appointment.find(params[:id])

      if Appointment.where(
        "date(appointment_date_time, 'localtime') = ?", 
        params[:appointment_date_time].to_date
        ).length() === 3 && @appointment.appointment_date_time.to_date != params[:appointment_date_time].to_date
        return render json: { errors: { appointments: 'Cannot update this appointment to this date because there would be more that 3 appointments for the same day' }}, status: :forbidden
      end

      @appointment.update(
          client_name: params[:client_name],
          appointment_date_time: params[:appointment_date_time]
      )
      render json: @appointment
  end 
  
  def destroy
      @appointment = Appointment.all 
      @appointment = Appointment.find(params[:id])
      @appointment.destroy
      render json: @appointment
  end 
end
