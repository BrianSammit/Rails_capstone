# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create([{ name: 'Sport bike', display_in_navbar: true }, { name: 'off-road', display_in_navbar: false },
    { name: 'Standard', display_in_navbar: true }, { name: 'Sport Touring', display_in_navbar: false },
    { name: 'Cruiser', display_in_navbar: true }, { name: 'Dual Sport', display_in_navbar: false },
    { name: 'Touring', display_in_navbar: true }, { name: 'Moped', display_in_navbar: false }])
