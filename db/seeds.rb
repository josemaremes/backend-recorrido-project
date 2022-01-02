# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Drop models
# Contract.delete_all
# User.delete_all
# Day.delete_all
# Role.delete_all
# Service.delete_all
# Schedule.delete_all

# # Add Days
# days = Day.create([
#   {day_name: "Lunes"},
#   {day_name: "Martes"},
#   {day_name: "Miércoles"},
#   {day_name: "Jueves"},
#   {day_name: "Viernes"},
#   {day_name: "Sábado"},
#   {day_name: "Domingo"}
# ])

# # Add Roles
# roles = Role.create([
#   {role_name: "Administrador"},
#   {role_name: "Ingeniero"},
#   {role_name: "Supervisor"}
# ])

# # Add services
# services = Service.create([
#   {service_name: "Monitoreo de EC2"},
#   {service_name: "Revisión de Buckets S3"},
#   {service_name: "Despliegues en Amplify" }
# ])

# # Add Schedules
# schedules = Schedule.create([
#   {time_name: "00:00"},
#   {time_name: "01:00"},
#   {time_name: "02:00"},
#   {time_name: "03:00"},
#   {time_name: "04:00"},
#   {time_name: "05:00"},
#   {time_name: "06:00"},
#   {time_name: "07:00"},
#   {time_name: "08:00"},
#   {time_name: "09:00"},
#   {time_name: "10:00"},
#   {time_name: "11:00"},
#   {time_name: "12:00"},
#   {time_name: "13:00"},
#   {time_name: "14:00"},
#   {time_name: "15:00"},
#   {time_name: "16:00"},
#   {time_name: "17:00"},
#   {time_name: "18:00"},
#   {time_name: "19:00"},
#   {time_name: "20:00"},
#   {time_name: "21:00"},
#   {time_name: "22:00"},
#   {time_name: "23:00"},
# ])

# Add Userss¿
users = User.create([
  {
    name: "Bárbara",
    lastname: "Castro",
    password: "123456",
    email: "correo1@gmail.com",
    role_id: (Role.find_by role_name: "Administrador").id
  },
  {
    name: "Ernesto",
    lastname: "Reyes",
    password: "123456",
    email: "correo2@gmail.com",
    role_id: (Role.find_by role_name: "Ingeniero").id
  },
  {
    name: "Benjamín",
    lastname: "Castillo",
    password: "123456",
    email: "correo3@gmail.com",
    role_id: (Role.find_by role_name: "Supervisor").id
  }
])

# # Add Contracts
# contracts = Contract.create([
#   {
#     contract_name: "Empresa Recorrido.cl",
#     service_id: services[0].id,
#     open_close_day: days[0].day_name + '-' + days[4].day_name,
#     open_close_schedule: schedules[19].time_name + '-' + schedules[23].time_name
#   },
#   {
#     contract_name: "Empresa Recorrido.cl",
#     service_id: services[0].id,
#     open_close_day: days[5].day_name + '-' + days[6].day_name,
#     open_close_schedule: schedules[10].time_name + '-' + schedules[23].time_name
#   },
# ])