# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Follow.destroy_all
Like.destroy_all
Annotation.destroy_all
Photo.destroy_all
User.destroy_all

jordan = User.create(first_name: 'Jordan', last_name: 'Martin', username: 'jordan', email: 'jdordan23@gmail.com', password: 'password', profile_photo: 'https://pbs.twimg.com/profile_images/733186212177936388/Ke3m8oMt_400x400.jpg')
estee = User.create(first_name: 'Estée', last_name: 'Lalonde', username: 'esteelalonde', email: 'esteelalonde@gmail.com', password: 'password', profile_photo: 'https://pbs.twimg.com/profile_images/1046764991653842944/lM9V1eOr_400x400.jpg')
james = User.create(first_name: 'James', last_name: 'Charles', username: 'jamescharles', email: 'jamescharles@gmail.com', password: 'password', profile_photo: 'https://pbs.twimg.com/profile_images/1058470062359756800/NBueHPgp_400x400.jpg')

Follow.create(following_id: estee.id, follower_id: jordan.id)
Follow.create(following_id: james.id, follower_id: jordan.id)
Follow.create(following_id: james.id, follower_id: estee.id)
Follow.create(following_id: jordan.id, follower_id: estee.id)
Follow.create(following_id: jordan.id, follower_id: james.id)


photo = Photo.create(user: jordan, caption: 'Glossier Phase 1 Set',url: 'https://static-assets.glossier.com/production/spree/images/attachments/000/001/754/portrait_normal/P1S_01-compressor.jpg?1514903538')
annotation1 = Annotation.create(photo: photo, name: 'Milky Jelly Cleanser', category: 'Skincare', brand: 'Glossier', shade: 'clear', url: 'https://www.glossier.com/products/milky-jelly-cleanser', comment: 'This removes all my mascara and eye makeup!' )
annotation2 = Annotation.create(photo: photo, name: 'Priming Moisturizer', category: 'Skincare', brand: 'Glossier', shade: 'clear', url: 'https://www.glossier.com/products/priming-moisturizer', comment: 'Very moisturizing and foundation lays so smooth on top.')
annotation3 = Annotation.create(photo: photo, name: 'Balm Dotcom', category: 'Skincare', brand: 'Glossier', shade: 'clear', url: 'https://www.glossier.com/products/balm-dotcom', comment:'Best lip balm ever!!!')

Like.create(photo: photo, user_id: estee.id)
Like.create(photo: photo, user_id: james.id)
