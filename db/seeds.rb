# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
greg = Owner.create(ownername: "Greg", location: "WI, USA")

santoku = Knife.create(owner_id: 1, category: "Santoku", description: "New Kurosaki, blue steel, with Western Handle", for_sale: false)