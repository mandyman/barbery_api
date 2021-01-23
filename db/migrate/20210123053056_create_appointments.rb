class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :client_name
      t.datetime :appointment_date_time
    end
  end
end
