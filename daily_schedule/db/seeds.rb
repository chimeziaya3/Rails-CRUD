# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Day.create(date: '06.11.17')
Event.create(event: 'eat food', start_time: '9:00', end_time: '10:00')
Location.create(city: 'New York', state: 'NY', country: 'USA')