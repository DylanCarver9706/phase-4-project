puts "🍕 Seeding Restaurants..."
r1 = Restaurant.create(name: "McDonald's", menu_img: 'https://menuandprice.com/wp-content/uploads/2021/08/McDonalds-menu-Salt-Lake-City-Utah-August-20th-2021.jpg', website_URL: 'https://www.mcdonalds.com/us/en-us.html', category: 'Fast-Food', favorite?: false)
r2 = Restaurant.create(name: 'Taco Bell', menu_img: 'https://www.tacobell.com/images/blog-taco-bell-menu-2.jpg', website_URL: 'https://www.tacobell.com/', category: 'Fast-Food', favorite?: false)

r3 = Restaurant.create(name: 'Waffle House', menu_img: 'https://explorepartsunknown.com/wp-content/uploads/2017/04/cceh0nqwoaaltad.jpg?quality=95&strip=color&w=1280&h=0', website_URL: 'https://www.wafflehouse.com/', category: 'Dine-In', favorite?: false)

r4 = Restaurant.create(name: 'Burger King', menu_img: 'https://assets1.risnews.com/styles/max_width_480/s3/2020-11/Restaurant_Brands_International_Inc__Burger_King__Tim_Hortons_an%20%282%29.jpg?itok=Kg1fd_5k', website_URL: 'https://www.bk.com/', category: 'Fast-Food', favorite?: false)

r5 = Restaurant.create(name: "Arby's", menu_img: 'https://image.zmenu.com/menupic/4403273/d1ee5dc9-f03a-4f05-a400-ce356fd7dcec.jpg', website_URL: 'https://www.arbys.com/', category: 'Fast-Food', favorite?: false)

r6 = Restaurant.create(name: "Ruby Tuesday", menu_img: 'https://image.zmenu.com/menupic/1056904/w_20210819024820096536.jpg', website_URL: 'https://www.rubytuesday.com/', category: 'Dine-In', favorite?: false)

r7 = Restaurant.create(name: 'Panda Express', menu_img: 'https://image.zmenu.com/menupic/5172629/253dd2e2-42f8-4e13-9744-965caa75eb19.jpg', website_URL: 'https://www.pandaexpress.com/', category: 'Fast-Food', favorite?: false)

r8 = Restaurant.create(name: 'Subway', menu_img: 'https://www.slcmenu.com/wp-content/uploads/2022/09/Subway-menu-one.jpg', website_URL: 'https://order.subway.com/en-us/', category: 'Fast-Food', favorite?: false)

puts "🧍 Seeding Users..."

u1 = User.create(full_name: 'Dylan Carver', email: 'dylancarver@gmail.com', password_digest: '1234')

u2 = User.create(full_name: 'Kristen McGinnis', email: 'kristenmcginnis@gmail.com', password_digest: '1234')

u3 = User.create(full_name: 'Dawson Bauer', email: 'dawsonbauer@gmail.com', password_digest: '1234')

puts "🧍+🍕 Seeding User_Restaurants..."

UserRestaurant.create(restaurant_id: r1.id, user_id: u1.id)

UserRestaurant.create(restaurant_id: r6.id, user_id: u3.id)

UserRestaurant.create(restaurant_id: r3.id, user_id: u2.id)

puts "✅ Done seeding!"