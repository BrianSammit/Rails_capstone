# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Category.create([{ name: 'Sport bike', display_in_navbar: true }, { name: 'off-road', display_in_navbar: false },
#     { name: 'Standard', display_in_navbar: true }, { name: 'Sport Touring', display_in_navbar: false },
#     { name: 'Cruiser', display_in_navbar: true }, { name: 'Dual Sport', display_in_navbar: false },
#     { name: 'Touring', display_in_navbar: true }, { name: 'Moped', display_in_navbar: false }])

#     User.create(name: 'Brian', username: 'brian97', email: 'brian@gmail.com', password: '123456', password_confirmation: '123456')
#     User.create(name: 'Natlia', username: 'nata', email: 'nata@gmail.com', password: '123456', password_confirmation: '123456')


7.times do |_i|
    article = Article.create!(
      title: 'sports bikes', 
      body: Faker::Lorem.paragraph_by_chars(number: 500),
      user_id: User.first.id, 
      category_id: '1',
    )
end


5.times do |_i|
    article = Article.create!(
      title: 'standar bikes', 
      body: Faker::Lorem.paragraph_by_chars(number: 500),
      user_id: User.first.id, 
      category_id: '2',
    )
end

3.times do |_i|
    article = Article.create!(
      title: 'cruiser', 
      body: Faker::Lorem.paragraph_by_chars(number: 500),
      user_id: User.first.id, 
      category_id: '3',
    )
end


5.times do |_i|
    article = Article.create!(
      title: 'touring', 
      body: Faker::Lorem.paragraph_by_chars(number: 500),
      user_id: User.first.id, 
      category_id: '4',
    )
end

2.times do |_i|
    article = Article.create!(
      title: 'Moto', 
      body: Faker::Lorem.paragraph_by_chars(number: 500),
      user_id: User.first.id, 
      category_id: '5',
    )
end



