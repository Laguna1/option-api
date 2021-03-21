# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#                              {name: 'Learning'}, {name: 'Sci-Fi'}]
categories = %w[Action Biography 'History Horror Kids Learning Sci-Fi]
categories.each do |name|
  Category.create(name: name)
end

users = [
    ['Oksana', '11111111'],
    ['Zozo', 'aaaaaaaa']
  ]

users.each do |username, password_digest|
  User.create(username: username, password_digest: password_digest)
end
books = [
    ['Harry Potter', 'Joan Rowling', 1, 7],
    ['People in my home', 'Nano Riko', 2, 4],
    ['Tails', 'Joan Karst', 2, 5],
    ['Jokes and Tails', 'Joan Karst', 2, 4],
    ['Etical hacking', 'Miguel Marshall', 1, 6]
  ]
books.each do |title, author, user_id, category_id|
  Book.create(title: title, author: author, user_id: user_id, category_id: category_id)
end
