# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  { name: 'Test User 1', email: 'test1@email.com', password: 'password' },
  { name: 'Test User 2', email: 'test2@email.com', password: 'password' },
  { name: 'Test User 3', email: 'test3@email.com', password: 'password' },
  { name: 'Test User 4', email: 'test4@email.com', password: 'password' }
].each do |user_attributes|
  User.create(user_attributes)
end

user = User.create(email: "admin@example.com", name: "hello", password: "password")
user.lists.build(name: "test list")
user.save
