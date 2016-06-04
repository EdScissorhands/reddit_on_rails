# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 10.times do |i|
#   Sub.create(
#     title: Faker::Hipster.word,
#     description: Faker::Hipster.sentence,
#     moderator_id: i + 1
#   )
# end

100.times do |i|
  Post.create(
  title: Faker::StarWars.vehicle,
  content: Faker::StarWars.quote,
  sub_id: ((i + 1) % 10),
  author_id: ((i + 2) % 10)
  )
end
