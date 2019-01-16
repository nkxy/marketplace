# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create!([
  {
    title: "Headphones",
    price: 12.99,
    inventory_count: 24
  },
  {
    title: "Ukulele",
    price: 80.99,
    inventory_count: 1
  },
  {
    title: "Ruby Necklace",
    price: 499.99,
    inventory_count: 0
  },
  {
    title: "Laptop Case",
    price: 19.99,
    inventory_count: 100
  },
  {
    title: "The Life-Changing Magic of Tidying Up: The Japanese Art of Decluttering and Organizing",
    price: 10.99,
    inventory_count: 0
  },
])