# This file should contain all the record creation needed to seed the database with its default values.
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

25.times do |n|
  Plan.create(name: "料理名#{n}回目", description: "頭痛い#{n}回目")
end