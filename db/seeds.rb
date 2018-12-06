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


photo1 = Photo.create(user: jordan, caption: 'Glossier Phase 1 Set',url: 'https://static-assets.glossier.com/production/spree/images/attachments/000/001/754/portrait_normal/P1S_01-compressor.jpg?1514903538')
Annotation.create(photo: photo1, name: 'Milky Jelly Cleanser', category: 'Skincare', brand: 'Glossier', shade: 'Clear', url: 'https://www.glossier.com/products/milky-jelly-cleanser', comment: 'This removes all my mascara and eye makeup!' )
Annotation.create(photo: photo1, name: 'Priming Moisturizer', category: 'Skincare', brand: 'Glossier', shade: 'Clear', url: 'https://www.glossier.com/products/priming-moisturizer', comment: 'Very moisturizing and foundation lays so smooth on top.')
Annotation.create(photo: photo1, name: 'Balm Dotcom', category: 'Skincare', brand: 'Glossier', shade: 'Clear', url: 'https://www.glossier.com/products/balm-dotcom', comment:'Best lip balm ever!!!')

photo2 = Photo.create(user: jordan, caption: 'Glossier Phase 1 Set',url: 'https://static-assets.glossier.com/production/spree/images/attachments/000/001/754/portrait_normal/P1S_01-compressor.jpg?1514903538')
Annotation.create(photo: photo2, name: 'Milky Jelly Cleanser', category: 'Skincare', brand: 'Glossier', shade: 'Clear', url: 'https://www.glossier.com/products/milky-jelly-cleanser', comment: 'This removes all my mascara and eye makeup!' )
Annotation.create(photo: photo2, name: 'Priming Moisturizer', category: 'Skincare', brand: 'Glossier', shade: 'Clear', url: 'https://www.glossier.com/products/priming-moisturizer', comment: 'Very moisturizing and foundation lays so smooth on top.')
Annotation.create(photo: photo2, name: 'Balm Dotcom', category: 'Skincare', brand: 'Glossier', shade: 'Clear', url: 'https://www.glossier.com/products/balm-dotcom', comment:'Best lip balm ever!!!')


photo3 = Photo.create(user: jordan, caption: 'All the Generation Gs', url: 'https://cdn-a.william-reed.com/var/wrbm_gb_food_pharma/storage/images/publications/cosmetics/cosmeticsdesign.com/article/2018/04/23/glossier-to-open-permanent-store-in-los-angeles/8122369-2-eng-GB/Glossier-to-open-permanent-store-in-Los-Angeles_wrbm_large.png')
Annotation.create(photo: photo3, name: 'Generation G', category: 'Lipstick', brand: 'Glossier', shade: 'Zip', url: 'https://www.glossier.com/products/generation-g', comment: 'Very buildable' )
Annotation.create(photo: photo3, name: 'Generation G', category: 'Lipstick', brand: 'Glossier', shade: 'Jam', url: 'https://www.glossier.com/products/generation-g', comment: 'Easy to apply' )
Annotation.create(photo: photo3, name: 'Generation G', category: 'Lipstick', brand: 'Glossier', shade: 'Cake', url: 'https://www.glossier.com/products/generation-g', comment: 'So comfortable' )

photo4 = Photo.create(user: jordan, caption: 'Balm Dot Coms',url: 'https://scrollonline.net/wp-content/uploads/2018/03/Glossier-Fin-2.jpg')
Annotation.create(photo: photo4, name: 'Balm Dot Com', category: 'Skincare', brand: 'Glossier', shade: 'Mint', url: 'https://www.glossier.com/products/balm-dotcom', comment: 'Tastes Great' )
Annotation.create(photo: photo4, name: 'Balm Dot Com', category: 'Skincare', brand: 'Glossier', shade: 'Cherry', url: 'https://www.glossier.com/products/balm-dotcom', comment: 'Keeps my lips so soft' )

photo5 = Photo.create(user: jordan, caption: 'Glossier Lip Gloss',url: 'https://i.pinimg.com/564x/00/24/c7/0024c7d359fee223ceb12182bae43574.jpg')
Annotation.create(photo: photo5, name: 'Lip Gloss', category: 'Lipstick', brand: 'Glossier', shade: 'Clear', url: 'https://www.glossier.com/products/lip-gloss', comment: 'Not at all sticky' )

photo6 = Photo.create(user: jordan, caption: 'Glossier Invisible Shield',url: 'https://assets.teenvogue.com/photos/5a37c0272ca9e55f6fdfa3ef/3:2/w_757/Glossier.jpg')
Annotation.create(photo: photo6, name: 'Invisible Shield SPF', category: 'Skincare', brand: 'Glossier', shade: 'Clear', url: 'https://www.glossier.com/products/invisible-shield', comment: 'No white cast!' )


photo7 = Photo.create(user: jordan, caption: 'Cloud Paints by Glossier',url: 'https://vg-images.condecdn.net/image/nlnkWlXQ0n8/crop/810/f/glossier_cloudpaint_product_06.jpg')
Annotation.create(photo: photo7, name: 'Cloud Paint', category: 'Blush', brand: 'Glossier', shade: 'Dusk', url: 'https://www.glossier.com/products/cloud-paint', comment: 'Blends out beautifully' )
Annotation.create(photo: photo7, name: 'Cloud Paint', category: 'Blush', brand: 'Glossier', shade: 'Dawn', url: 'https://www.glossier.com/products/cloud-paint', comment: 'Love the color' )
Annotation.create(photo: photo7, name: 'Cloud Paint', category: 'Blush', brand: 'Glossier', shade: 'Haze', url: 'https://www.glossier.com/products/cloud-paint', comment: 'Lasts all day' )
Annotation.create(photo: photo7, name: 'Cloud Paint', category: 'Blush', brand: 'Glossier', shade: 'Beam', url: 'https://www.glossier.com/products/cloud-paint', comment: 'Amazing texture' )

photo8 = Photo.create(user: jordan, caption: 'Lip Star by Glossier',url: 'https://s1.r29static.com//bin/entry/7fd/545x727,80/1951827/image.jpg')
Annotation.create(photo: photo8, name: 'Lidstar', category: 'Eyeshadow', brand: 'Glossier', shade: 'Lily', url: 'https://www.glossier.com/products/lidstar', comment: 'So easy to apply with my finger' )

photo9 = Photo.create(user: jordan, caption: 'Glossier Solution',url: 'https://s2.r29static.com//bin/entry/a77/545x727,80/1951817/image.jpg')
Annotation.create(photo: photo9, name: 'Solution', category: 'Skincare', brand: 'Glossier', shade: 'Clear', url: 'https://www.glossier.com/products/solution', comment: 'Completely cleared up my acne' )

photo10 = Photo.create(user: jordan, caption: 'Glossier You Perfume',url: 'https://s2.r29static.com//bin/entry/7c2/545x727,80/1951825/image.jpg')
Annotation.create(photo: photo10, name: 'Glossier You', category: 'Fragrance', brand: 'Glossier', shade: 'Clear', url: 'https://www.glossier.com/products/glossier-you', comment: 'Best scent ever!!!' )

photo11 = Photo.create(user: jordan, caption: 'Glossier Wowder',url: 'https://s1.r29static.com//bin/entry/10c/545x409,80/1951818/image.jpg')
Annotation.create(photo: photo11, name: 'Wowder', category: 'Powder', brand: 'Glossier', shade: 'Dark/Deep', url: 'https://www.glossier.com/products/wowder', comment: 'Amazing texture' )

photo12 = Photo.create(user: jordan, caption: 'Glossier Body Hero',url: 'https://s1.r29static.com//bin/entry/e87/545x727,80/1951824/image.jpg')
Annotation.create(photo: photo12, name: 'Body Hero Daily Oil Wash', category: 'Body', brand: 'Glossier', shade: 'Clear', url: 'https://www.glossier.com/products/body-hero-daily-oil-wash', comment: 'Gentle enough for everyday use' )
Annotation.create(photo: photo12, name: 'Body Hero Daily Perfecting Cream', category: 'Body', brand: 'Glossier', shade: 'Clear', url: 'https://www.glossier.com/products/body-hero-daily-perfecting-cream', comment: 'Makes my skin so soft' )

photo13 = Photo.create(user: jordan, caption: 'Lip Star by Glossier',url: 'https://s1.r29static.com//bin/entry/7fd/545x727,80/1951827/image.jpg')
Annotation.create(photo: photo13, name: 'Lidstar', category: 'Eyeshadow', brand: 'Glossier', shade: 'Lily', url: 'https://www.glossier.com/products/lidstar', comment: 'So easy to apply with my finger' )

photo14 = Photo.create(user: jordan, caption: 'Glossier Solution',url: 'https://s2.r29static.com//bin/entry/a77/545x727,80/1951817/image.jpg')
Annotation.create(photo: photo14, name: 'Solution', category: 'Skincare', brand: 'Glossier', shade: 'Clear', url: 'https://www.glossier.com/products/solution', comment: 'Completely cleared up my acne' )

photo15 = Photo.create(user: jordan, caption: 'Glossier You Perfume',url: 'https://s2.r29static.com//bin/entry/7c2/545x727,80/1951825/image.jpg')
Annotation.create(photo: photo15, name: 'Glossier You', category: 'Fragrance', brand: 'Glossier', shade: 'Clear', url: 'https://www.glossier.com/products/glossier-you', comment: 'Best scent ever!!!' )

photo16 = Photo.create(user: jordan, caption: 'Glossier Wowder',url: 'https://s1.r29static.com//bin/entry/10c/545x409,80/1951818/image.jpg')
Annotation.create(photo: photo16, name: 'Wowder', category: 'Powder', brand: 'Glossier', shade: 'Dark/Deep', url: 'https://www.glossier.com/products/wowder', comment: 'Amazing texture' )

photo17 = Photo.create(user: jordan, caption: 'Glossier Body Hero',url: 'https://s1.r29static.com//bin/entry/e87/545x727,80/1951824/image.jpg')
Annotation.create(photo: photo17, name: 'Body Hero Daily Oil Wash', category: 'Body', brand: 'Glossier', shade: 'Clear', url: 'https://www.glossier.com/products/body-hero-daily-oil-wash', comment: 'Gentle enough for everyday use' )
Annotation.create(photo: photo17, name: 'Body Hero Daily Perfecting Cream', category: 'Body', brand: 'Glossier', shade: 'Clear', url: 'https://www.glossier.com/products/body-hero-daily-perfecting-cream', comment: 'Makes my skin so soft' )








Like.create(photo: photo1, user_id: jordan.id)
Like.create(photo: photo2, user_id: jordan.id)
Like.create(photo: photo3, user_id: jordan.id)
Like.create(photo: photo4, user_id: jordan.id)
Like.create(photo: photo5, user_id: jordan.id)


Like.create(photo: photo1, user_id: estee.id)
Like.create(photo: photo2, user_id: estee.id)
Like.create(photo: photo3, user_id: estee.id)
Like.create(photo: photo4, user_id: estee.id)
Like.create(photo: photo5, user_id: estee.id)
Like.create(photo: photo6, user_id: estee.id)
Like.create(photo: photo7, user_id: estee.id)
Like.create(photo: photo8, user_id: estee.id)
Like.create(photo: photo9, user_id: estee.id)
Like.create(photo: photo10, user_id: estee.id)
Like.create(photo: photo11, user_id: estee.id)
Like.create(photo: photo12, user_id: estee.id)
Like.create(photo: photo13, user_id: estee.id)
Like.create(photo: photo14, user_id: estee.id)
Like.create(photo: photo1, user_id: james.id)
