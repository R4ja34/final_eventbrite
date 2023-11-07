# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

5.times do |i|
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "test#{i+1}@test.com",
    password: 'mdp1234',
    password_confirmation: 'mdp1234'
  )
end

users = User.all

# Création de 30 publications avec des utilisateurs aléatoires
10.times do
  user = users.sample
  event = Event.create(
    start_date: Faker::Date.forward(days: 30),
    duration: 500,
    price: rand(10..200),
    location: "montpellier",
    admin_id: user.id
  )
  event.title = Faker::Lorem.words(number: rand(5..10)).join(' ')
  event.description = Faker::Lorem.sentences(number: rand(20..30)).join(' ')
  event.save
end
