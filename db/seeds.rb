# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: "chad@example.com", password: "password", password_confirmation: "password")
p "Test user created"

Task.create(content: "Code all day.", user_id: 1, state: "to_do")
Task.create(content: "http://i.imgur.com/Cxagv.jpg", user_id: 1, state: "to_do")
Task.create(content: "https://www.youtube.com/watch?v=C9nNNJO0j6U", user_id: 1, state: "to_do")
p "Test tasks created"