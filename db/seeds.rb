# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

appoint_1 = Appointment.create(client_name: "client_1", appointment_date_time: Time.now)
appoint_2 = Appointment.create(client_name: "client_2", appointment_date_time: Time.now)
appoint_3 = Appointment.create(client_name: "client_3", appointment_date_time: Time.now)