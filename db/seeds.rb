# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

roles = Role.create([{name: 'Supervisor'}, {name: 'Administrador'}])

users = User.create(
    email: "josemacloud@gmail.com",
    password: "1233456789",
    name: "José Manuel",
    lastname: "Barrientos Linares",
    role_id: 1
)