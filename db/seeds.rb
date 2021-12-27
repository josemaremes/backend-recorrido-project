# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Drop models
Contract.delete_all
User.delete_all
Day.delete_all
Role.delete_all
Schedule.delete_all

# Add Days
days = Day.create([
    {name: "Sunday"},
    {name: "Monday"},
    {name: "Tuesday"},
    {name: "Wednesday"},
    {name: "Thursday"},
    {name: "Friday"},
    {name: "Saturday"}
])

# Add Roles
roles = Role.create([
    {name: "Administrator"},
    {name: "Engineer"},
    {name: "Supervisor"}
])

# Add Schedules
schedules = Schedule.create([
    {opening_time: "00:00", closing_time: "01:00"},
    {opening_time: "01:00", closing_time: "02:00"},
    {opening_time: "02:00", closing_time: "03:00"},
    {opening_time: "03:00", closing_time: "04:00"},
    {opening_time: "04:00", closing_time: "05:00"},
    {opening_time: "05:00", closing_time: "06:00"},
    {opening_time: "06:00", closing_time: "07:00"},
    {opening_time: "07:00", closing_time: "08:00"},
    {opening_time: "08:00", closing_time: "09:00"},
    {opening_time: "09:00", closing_time: "10:00"},
    {opening_time: "10:00", closing_time: "11:00"},
    {opening_time: "11:00", closing_time: "12:00"},
    {opening_time: "12:00", closing_time: "13:00"},
    {opening_time: "13:00", closing_time: "14:00"},
    {opening_time: "14:00", closing_time: "15:00"},
    {opening_time: "15:00", closing_time: "16:00"},
    {opening_time: "16:00", closing_time: "17:00"},
    {opening_time: "17:00", closing_time: "18:00"},
    {opening_time: "18:00", closing_time: "19:00"},
    {opening_time: "19:00", closing_time: "20:00"},
    {opening_time: "20:00", closing_time: "21:00"},
    {opening_time: "21:00", closing_time: "22:00"},
    {opening_time: "22:00", closing_time: "23:00"},
    {opening_time: "23:00", closing_time: "00:00"},
])