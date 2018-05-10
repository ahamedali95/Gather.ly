require 'csv'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

csv_text = File.read(Rails.root.join('lib', 'assets', 'foods2.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Ingredient.new
  t.name = row
  t.save
end

# Event.destroy_all
# User.destroy_all
# Recipe.destroy_all

#Events model testing seeds 
ahamed = User.create(name: "Ahamed", username: "ahamed1", password: "1234", password_confirmation: "1234")
daniel = User.create(name: "Daniel", username: "damndaniel", password: "password", password_confirmation: "password")
joe = User.create(name: "Joe", username: "joe", password: "5678", password_confirmation: "5678")
brie = User.create(name: "Brie", username: "brie", password: "91011", password_confirmation: "91011")
shun = User.create(name: "Shun", username: "theshun", password: "shunthis", password_confirmation: "shunthis")

event1 = Event.create(title: "Mod1 Potluck", location: "Kay", date: "2018-05-07-12:00", details: "Let's celebrate!!!!")
event2 = Event.create(title: "Mod2 Potluck", location: "Kay", date: "2018-05-07-12:00", details: "Let's celebrate!!!!")
event3 = Event.create(title: "Mod3 Potluck", location: "Kay", date: "2018-01-07-12:00", details: "Let's celebrate!!!!")
event4 = Event.create(title: "Mod4 Potluck", location: "Turing", date: "2018-05-07-12:00", details: "Let's celebrate!!!!")

event1.users << ahamed << daniel << joe
event2.users << ahamed << daniel << joe << brie << shun
event3.users << ahamed << daniel << joe << brie


#Recipe.create(name: "Tumeric Caesar Salad", details: "Not good probably", user_id: @a.id)

# Recipe.create(name: "Tumeric Caesar Salad", details: "Not good probably", user_id: @a.id)
# 20.times do
#   r = Recipe.create(name: Faker::Food.dish, details: Faker::Food.description, user_id: rand(1..5))
#   5.times do
#     r.ingredients << Ingredient.create(name: Faker::Food.unique.ingredient)
#   end
# end
