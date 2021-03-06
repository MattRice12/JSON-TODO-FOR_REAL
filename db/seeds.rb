# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  list = List.create(
    title:        Faker::Name.title
    )
  2.times do
    Task.create(
      body:       Faker::Lorem.paragraph,
      list_id:    list.id,
      completed:  rand(0..1)
      )
  end
end
