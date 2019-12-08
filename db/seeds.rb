# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


book = Book.create(title: 'The Catcher in the Rye', author: 'J. D. Salinger', description: 'Life through the eyes of 16 year old main character Holden Caulfield.')

review = Review.create(book_id: 1, comment: 'A classic novel, well written and invigorating but I can not relate.')