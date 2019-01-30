# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

7.times do |i|
  Content.create(
      title: Faker::Lorem.sentence,
      summary: Faker::LordOfTheRings.quote,
      published_date: i.even? ? Time.now : (Time.now + 5.minutes),
      content: Faker::Lorem.paragraph(10),
      author: Faker::Name.name,
      status: i%5 == 0 ? 'published' : 'draft'
  )
end