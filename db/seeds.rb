# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

city_array = []


6.times do |index|

  c = City.create(city_name: Faker::Address.city)       #créer les villes
  city_array << c

end

6.times do |index|

  Dog.create(name: Faker::Creature::Dog.name, city:city_array.sample)     #creer les chiens avec l'id des villes
  Dogsitter.create(name: Faker::Name.first_name, city:city_array.sample)

end
