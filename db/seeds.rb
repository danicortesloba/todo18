# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

9.times do |i|
  Task.create(
    name: "Tarea #{i + 1}",
    photo: "https://loremflickr.com/g/320/240/chile"
  )
end

10.times do |x|
  User.create!(
    email: "email#{x+1}@email.com",
    password: "password",
    password_confirmation: "password",
    name: Faker::HarryPotter.character,
    photo: "https://loremflickr.com/250/250/woman"
  )
end
