# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Drop models
Contract.delete_all
# User.delete_all
# Day.delete_all
# Role.delete_all
Service.delete_all
Schedule.delete_all

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

# Add services
services = Service.create([
                            { service_name: 'Monitoreo de EC2' }
                            # {service_name: "Revisión de Buckets S3"},
                            # {service_name: "Despliegues en Amplify" }
                          ])

# Add Schedules
schedules = Schedule.create([
                              { time_name: '0' },
                              { time_name: '1' },
                              { time_name: '2' },
                              { time_name: '3' },
                              { time_name: '4' },
                              { time_name: '5' },
                              { time_name: '6' },
                              { time_name: '7' },
                              { time_name: '8' },
                              { time_name: '9' },
                              { time_name: '10' },
                              { time_name: '11' },
                              { time_name: '12' },
                              { time_name: '13' },
                              { time_name: '14' },
                              { time_name: '15' },
                              { time_name: '16' },
                              { time_name: '17' },
                              { time_name: '18' },
                              { time_name: '19' },
                              { time_name: '20' },
                              { time_name: '21' },
                              { time_name: '22' },
                              { time_name: '23' }
                            ])

# Add Users
# users = User.create([
#   {
#     name: "Bárbara",
#     lastname: "Castro",
#     password: "123456",
#     email: "correo1@gmail.com",
#     role_id: (Role.find_by role_name: "Administrador").id
#   },
#   {
#     name: "Ernesto",
#     lastname: "Reyes",
#     password: "123456",
#     email: "correo2@gmail.com",
#     role_id: (Role.find_by role_name: "Ingeniero").id
#   },
#   {
#     name: "Benjamín",
#     lastname: "Castillo",
#     password: "123456",
#     email: "correo3@gmail.com",
#     role_id: (Role.find_by role_name: "Supervisor").id
#   },
#   {
#     name: "José",
#     lastname: "Barrientos",
#     password: "123456",
#     email: "josemacloud@gmail.com",
#     role_id: (Role.find_by role_name: "Supervisor").id
#   },
# ])

# Add Contracts
contracts = Contract.create([
                              {
                                contract_name: 'Empresa Recorrido.cl',
                                service_id: services[0].id,
                                open_close_day: "#{(Day.find_by day_name: 'Lunes').day_name}-#{(Day.find_by day_name: 'Viernes').day_name}",
                                open_close_schedule: "#{schedules[19].time_name}-#{schedules[23].time_name}"
                              },
                              {
                                contract_name: 'Empresa Recorrido.cl',
                                service_id: services[0].id,
                                open_close_day: "#{(Day.find_by day_name: 'Sábado').day_name}-#{(Day.find_by day_name: 'Domingo').day_name}",
                                open_close_schedule: "#{schedules[10].time_name}-#{schedules[23].time_name}"
                              }
                            ])
