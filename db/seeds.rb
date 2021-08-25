# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env.development?
  puts "Destroying bookings..."
  Booking.destroy_all
  puts "Destroying profiles..."
  Profile.destroy_all
  puts "Destroying users..."
  User.destroy_all
end

puts "create user"
user_a = User.create!(email: "walterwhite@gmail.com", password: "hwhlaaqeor")
user_b = User.create!(email: "bo-jo@gmail.com", password: "hidceghgwj")
user_c = User.create!(email: "andy.bernard@gmail.com", password: "fwerggsdfe")
user_d = User.create!(email: "owen.wilson@gmail.com", password: "mdsnfjgurh")
user_e = User.create!(email: "donald.trump@gmail.com", password: "sidnthurye")

puts "create profile"
profile_a = Profile.create!(user: user_a, first_name: "Walter", last_name: "White", bio: "Hi my name is Walter, used to be a chemistry teacher but now I’m just into meth. I like meth a lot and basically am up for anything so long as meth is involved. I am the one who knocks!", interests: "Meth, My brother in law(I miss him), my best friend, Jessie (miss him too). Cooking meth, taking meth, selling meth.", picture: "https://res.cloudinary.com/dxhrxhiwb/image/upload/v1629890720/User_1_Walter_White_va6gdq.jpg", location: "45 Appleby St, London, E2 8EP", birth_date: Date.new(1968, 3, 8))
profile_b = Profile.create!(user: user_b, first_name: "Boris", last_name: "Johnson", bio: "Bojo here. Im a bit of a lad tbh, love the banter. I usually have cobra meetings to go to at the weekends but bugger that, free this weekend to meet up with one of you mere peasants and have the banter.", interests: "Lying, being posh, being lazy, having banter with the boys, croquet, absolutely love letting people down, including myself.", picture: "https://res.cloudinary.com/dxhrxhiwb/image/upload/v1629890720/User_2_Boris_Johnson_keebb8.jpg", location: "86-90 Nuttall St, London N1 5LN", birth_date: Date.new(1972, 11, 2))
profile_c = Profile.create!(user: user_c, first_name: "Andy", last_name: "Bernard", bio: "Roo-doo-do-doo! Andy Bernard here. Here for a good time! Love ass things music. Singing in my A capella band, ‘Here comes treble. They called me boner king back in college. Would love to jam out, play some tunes and vibe. Slight anger issues but lets not get into it. Beer me!!", interests: "A cappella, my dad’s boat, music, acting, ROO-DOO-DO-DOO!!!", picture: "https://res.cloudinary.com/dxhrxhiwb/image/upload/v1629890720/User_3_Andy_Bernard_llcedm.jpg", location: "4 Pearson St, London E2 8JD", birth_date: Date.new(1976, 1, 18))
profile_d = Profile.create!(user: user_d, first_name: "Owen", last_name: "Wilson", bio: "What can I say, I’m a bit of a player. Keen to go to be someone’s plus one at a wedding.  I DONT CRASH FUNERALS!! Did it once and never again! Love my dog Marley too, so a nice walk in the park would be good.", interests: "Weddings, music, saying WOAW, my dog Marley!!!", picture:"https://res.cloudinary.com/dxhrxhiwb/image/upload/v1629890720/User_4_Owen_Wilson_x9oyri.jpg", location: "149 Crondall St, London N1 6JF", birth_date: Date.new(1978, 4, 10))
profile_e = Profile.create!(user: user_e, first_name: "Donald", last_name: "Trump", bio: "Lets make shoreditch great again! Trust me, you need me! I'm one of the greatest people you have ever met. Amongst the billions and billions . . . and BILLIONS of others in the world. I stand alone. Pretty sure my wife hates me", interests: "America, oil, money, my wife, money, money, money, DOLLA DOLLA BILLS Y'ALL!! $$$$$$$", picture:"https://res.cloudinary.com/dxhrxhiwb/image/upload/v1629890720/User_5_Donald_Trump_nbwo8r.jpg", location: "67 Buttesland St, London N1 6BY", birth_date: Date.new(1954, 1, 18))

puts "create booking"
start_date = Date.new(2021, 2, 5)
end_date = Date.new(2021, 2, 6)
booking_a = Booking.create(user: user_c, profile: profile_c, event_name: "Here Comes Treble Concert", event_location: "London 02 Arena", start_date: start_date, end_date: end_date)
puts "Everything created!!!"
