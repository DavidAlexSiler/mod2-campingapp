# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Planet.destroy_all
User.destroy_all

hoth = Planet.create(name: "Hoth", terrain: "Snowy Mountains", temp_range: "-450,000 celcignar to 40 celcignar", vegetation: "none", animals: "ton-tons", local_beings: "scavengers", backpack: "snowpack")
yoyo = User.create(name: "Yoyo", bio: "green, smart, and ready to mingle", age: "23,092 dots", img_url: "https://media.mnn.com/assets/images/2017/12/porg-star-war.jpg.653x0_q80_crop-smart.jpg", username: "yoyo123", password: "letmein")