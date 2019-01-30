# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do
    user = User.create!(name: Faker::Name.first_name)
  end

  10.times do
    pin = Pin.create!(url: Faker::Internet.url, user_id: Faker::Number.between(1, 10))
  end

  10.times do
    comment = Comment.create!(text: Faker::ChuckNorris.fact, user_id: Faker::Number.between(1, 30), pin_id: Faker::Number.between(1, 20))
  end