# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# créer promeneur + chiens + villes 
10.times do
  dogsitter = DogSitter.create!(name: Faker::Name.name)
  dog = Dog.create!(name: Faker::Name.first_name )
  city = City.create!(city_name: Faker::Address.city)
end

# relier les promeneurs et les chiens
30.times do
  the_dogsitter = DogSitter.find(DogSitter.pluck(:id).shuffle.first)
  the_dog = Dog.find(Dog.pluck(:id).shuffle.first)
  jointablestroll = Stroll.create!(dog_sitter: the_dogsitter, dog: the_dog)
end

# relier les promeneurs et les villes
30.times do
  the_dogsitter = DogSitter.find(DogSitter.pluck(:id).shuffle.first)
  the_city = City.find(City.pluck(:id).shuffle.first)
  jointablecitydogsitter = JoinTableCityDogsitter.create!(dog_sitter: the_dogsitter, city: the_city)
end

# relier les chiens et les villes
30.times do
  the_dog = Dog.find(Dog.pluck(:id).shuffle.first)
  the_city = City.find(City.pluck(:id).shuffle.first)
  jointablecitydog = JoinTableCityDog.create!(dog: the_dog, city: the_city)
end