# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "* Creating Admin user"

user = User.create(email: 'salonparaticr@gmail.com', password: 'SalonFabi123')

puts "* Admin user created with email salonparaticr@gmail.com"
