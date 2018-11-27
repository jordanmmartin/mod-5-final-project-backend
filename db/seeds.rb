# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


jordan = User.create(first_name: 'Jordan', last_name: 'Martin', username: 'jordan', email: 'jdordan23@gmail.com', password: 'password')
photo = Photo.create(user: jordan, caption: 'Glossier Phase 1 Set',url: 'https://static-assets.glossier.com/production/spree/images/attachments/000/001/754/portrait_normal/P1S_01-compressor.jpg?1514903538')
annotation1 = Annotation.create(photo: photo, name: 'Milky Jelly Cleanser', category: 'Skincare', brand: 'Glossier', shade: '', url: 'https://www.glossier.com/products/milky-jelly-cleanser')
annotation2 = Annotation.create(photo: photo, name: 'Priming Moisturizer', category: 'Skincare', brand: 'Glossier', shade: '', url: 'https://www.glossier.com/products/priming-moisturizer')
annotation3 = Annotation.create(photo: photo, name: 'Balm Dotcom', category: 'Skincare', brand: 'Glossier', shade: '', url: 'https://www.glossier.com/products/balm-dotcom')
