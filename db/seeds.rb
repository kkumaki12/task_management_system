# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |n|
  User.create(name: "#{n}人目", email: "#{n}@co.jp", password: 'password')
end

100.times do |n|
  Task.create(name: "#{n}つ目のタスク", content: "#{n}番目です", expiration_deadline: 100.days.from_now, status: rand(0..2), user_id: rand(1..10))
end
