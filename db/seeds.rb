# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


hari = Item.create(name: 'Harri Potta', description: 'Magiczna książka o magii', isbn: 63276, language: 'polski',state: 'nowa', date_pub: '2007-01-01 10:00:00', item_img_file_name: 'harripotta_img.jpg',item_img_content_type: 'image/jpeg', item_img_file_size: 59705, item_img_updated_at: '2007-01-01 10:00:00')
chroom = Item.create(name: 'Cudowny Chroom Chroomek', description: 'Książka o Chroom Chroomku i jego prygodach', isbn: 74382, language: 'polski',state: 'nowa', date_pub: '2007-01-01 10:00:00', item_img_file_name: 'chroom_img.jpg',item_img_content_type: 'image/jpeg', item_img_file_size: 97016, item_img_updated_at: '2009-01-01 10:00:00')
rowling = Author.create(name: 'Rowling',date_born: 'jan 1 1968')
steve = Author.create(name: 'Steve jenkins',date_born: 'jan 6 1968')
derek = Author.create(name: 'Derek Walter',date_born: 'jan 6 1968')
hari.item_authors.create(author: rowling)
rowling.item_authors.create(item:hari)
chroom.item_authors.create(author: steve)
chroom.item_authors.create(author: derek)