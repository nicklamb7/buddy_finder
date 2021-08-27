# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# if Rails.env.development?
#   puts "Destroying bookings..."
  Booking.destroy_all
  # puts "Destroying profiles..."
  Profile.destroy_all
  # puts "Destroying users..."
  User.destroy_all
# end

puts "create user"
user_a = User.create!(email: "walterwhite@gmail.com", password: "hwhlaaqeor")
user_b = User.create!(email: "bo-jo@gmail.com", password: "hidceghgwj")
user_c = User.create!(email: "andy.bernard@gmail.com", password: "fwerggsdfe")
user_d = User.create!(email: "owen.wilson@gmail.com", password: "mdsnfjgurh")
user_e = User.create!(email: "donald.trump@gmail.com", password: "sidnthurye")
user_f = User.create!(email: "emily@gmail.com", password: "hwhlaaweeor")
user_g = User.create!(email: "emma@gmail.com", password: "hidcwegghgwj")
user_h = User.create!(email: "oprah@gmail.com", password: "hrjnceghgwj")
user_i = User.create!(email: "miley@gmail.com", password: "hidceghwj")
user_j = User.create!(email: "carol@gmail.com", password: "hidcegjug")
user_k = User.create!(email: "silentbob@gmail.com", password: "hidcegjfi")
user_l = User.create!(email: "frank@gmail.com", password: "hidcegsol")
user_m = User.create!(email: "hulk@gmail.com", password: "hidcegedrf")
user_n = User.create!(email: "cersei@gmail.com", password: "hidcegske")
user_o = User.create!(email: "lizzy@gmail.com", password: "hidcegske")
user_p = User.create!(email: "elonmusk@gmail.com", password: "000000")
user_nat = User.create!(email: "nat@gmail.com", password: "hidcewfwj")

puts "create profile"
profile_a = Profile.create!(user: user_a, first_name: "Walter", last_name: "White", bio: "Hi my name is Walter, used to be a chemistry teacher but now I’m just into meth. I like meth a lot and basically am up for anything so long as meth is involved. I am the one who knocks!", interests: "Meth, My brother in law(I miss him), my best friend, Jessie (miss him too). Cooking meth, taking meth, selling meth.", picture: "https://res.cloudinary.com/dr5brdsjq/image/upload/v1629898943/walter_iukrdb.jpg", location: "45 Appleby St, London, E2 8EP", birth_date: Date.new(1968, 3, 8), latitude: 51.532797, longitude: -0.076838 )
profile_b = Profile.create!(user: user_b, first_name: "Boris", last_name: "Johnson", bio: "Bojo here. Im a bit of a lad tbh, love the banter. I usually have cobra meetings to go to at the weekends but bugger that, free this weekend to meet up with one of you mere peasants and have the banter.", interests: "Lying, being posh, being lazy, having banter with the boys, croquet, absolutely love letting people down, including myself.", picture: "https://res.cloudinary.com/dr5brdsjq/image/upload/v1629898898/boris_upbirf.jpg", location: "86-90 Nuttall St, London N1 5LN", birth_date: Date.new(1972, 11, 2))
profile_c = Profile.create!(user: user_c, first_name: "Andy", last_name: "Bernard", bio: "Roo-doo-do-doo! Andy Bernard here. Here for a good time! Love ass things music. Singing in my A capella band, ‘Here comes treble. They called me boner king back in college. Would love to jam out, play some tunes and vibe. Slight anger issues but lets not get into it. Beer me!!", interests: "A cappella, my dad’s boat, music, acting, ROO-DOO-DO-DOO!!!", picture: "https://res.cloudinary.com/dxhrxhiwb/image/upload/v1629890720/User_3_Andy_Bernard_llcedm.jpg", location: "4 Pearson St, London E2 8JD", birth_date: Date.new(1976, 1, 18))
profile_d = Profile.create!(user: user_d, first_name: "Owen", last_name: "Wilson", bio: "What can I say, I’m a bit of a player. Keen to go to be someone’s plus one at a wedding.  I DONT CRASH FUNERALS!! Did it once and never again! Love my dog Marley too, so a nice walk in the park would be good.", interests: "Weddings, music, saying WOAW, my dog Marley!!!", picture:"https://res.cloudinary.com/dwfl1xhao/image/upload/v1630069220/buddyfinder/Owen_wilson_wowedit_look_up_how_many_times_owen_wilson_ab5c6b_6438391_mwmxnx.jpg", location: "149 Crondall St, London N1 6JF", birth_date: Date.new(1978, 4, 10))
profile_e = Profile.create!(user: user_e, first_name: "Donald", last_name: "Trump", bio: "Lets make shoreditch great again! Trust me, you need me! I'm one of the greatest people you have ever met. Amongst the billions and billions . . . and BILLIONS of others in the world. I stand alone. Pretty sure my wife hates me", interests: "America, oil, money, my wife, money, money, money, DOLLA DOLLA BILLS Y'ALL!! $$$$$$$", picture:"https://res.cloudinary.com/dxhrxhiwb/image/upload/v1629890720/User_5_Donald_Trump_nbwo8r.jpg", location: "67 Buttesland St, London N1 6BY", birth_date: Date.new(1954, 1, 18))
profile_f = Profile.create!(user: user_f, first_name: "Emily", last_name: "Blunt", bio: "I'm a British actress. Won the Golden Globe Award and a Screen Actors Guild Award, in addition to nominations for two British Academy Film Awards. Got educated at Hurtwood House in Dorking, and made my acting debut in a 2001 stage production of The Royal Family.", interests: "Fashion and pure love", picture: "https://res.cloudinary.com/dr5brdsjq/image/upload/v1629896925/emily_blunt_ouvyge.jpg", location: "23 Buckland St, London N1 6TR", birth_date: Date.new(1983, 2, 23))
# profile_g = Profile.create!(user: user_g, first_name: "Emma", last_name: "Watson", bio: "I'm one of the best actress because I am nice to everyone", interests: "Just Harry Potter really, yeah Harry baby.", picture: "https://res.cloudinary.com/dr5brdsjq/image/upload/v1629899073/emma_b9cmor.jpg", location: "7A Micawber St, London N1 7TB", birth_date: Date.new(1990, 4, 15))
# profile_h = Profile.create!(user: user_h, first_name: "Oprah", last_name: "Winfrey", bio: "Oprah Gail Winfrey is an American talk show host, television producer, actress, author, and philanthropist.", interests: "Love drama AF! And speaking to the third person", picture: "https://res.cloudinary.com/dr5brdsjq/image/upload/v1629896926/oprah_v7gvbr.jpg", location: "19 Elwin St, London E2 7BU", birth_date: Date.new(1954, 1, 29))
# profile_i = Profile.create!(user: user_i, first_name: "Miley", last_name: "Cyrus", bio: "Do I really need to say something?", interests: "Party & drugs.. my father tried to stop me but hey.. here I am.", picture: "https://res.cloudinary.com/dr5brdsjq/image/upload/v1629896923/miley_cyrus_j5rlbh.jpg", location: "28 Anna Cl, Brownlow Rd, London E8 4NW", birth_date: Date.new(1992, 11, 23))
profile_j = Profile.create!(user: user_j, first_name: "Carol", last_name: "Baskin", bio: "Hey, I'm Carol and i love cats! Haven't seen my husband in a while, I wonder what happened to him . . . Anyway, hit me up and lets go by clothes with cats on them!", interests: "Cats, catnip, big cats, small cats, little cats, fat cats, MEOW!!!", picture: "https://res.cloudinary.com/dwfl1xhao/image/upload/v1630016556/buddyfinder/Carole-Baskin-1_w2xdhh.jpg", location: "Gascoigne Pl, London E2 7LY", birth_date: Date.new(1954, 9, 28))
profile_k = Profile.create!(user: user_k, first_name: "Bob", last_name: ". . . ", bio: " . . . . . . . . . . . . . . . ", interests: " . . . . . . . . ", picture: "https://res.cloudinary.com/dwfl1xhao/image/upload/v1630017366/buddyfinder/Silent-Bob-still_pqhidj.jpg", location: "145 Haberdasher St, London N1 6BT", birth_date: Date.new(1972, 1, 11))
profile_l = Profile.create!(user: user_l, first_name: "Frank", last_name: "Gallagher", bio: " Frank here. You'll usually find me down the chatsworth sippin on a pint and having intellectual conversation. F*** the police! Lets meet up and get a pint and 2 e's!!! Scatter!!!", interests: "Art and the finer things in life. Intellectual, stimulating conversation, talking absolute shite", picture: "https://res.cloudinary.com/dwfl1xhao/image/upload/v1630018141/buddyfinder/Frank-Gallagher-007_jyfjzd.jpg", location: "145 Haberdasher St, London N1 6BT", birth_date: Date.new(1953, 9, 28))
profile_m = Profile.create!(user: user_m, first_name: "Hulk", last_name: "Hogan", bio: " Hey brother! Lets get out therer and get wasted tonight! Hulk needs to unleash the beast!!", interests: "Cold beer, ripping people off the top turnbuckle! Bleaching my hair", picture: "https://res.cloudinary.com/dwfl1xhao/image/upload/v1630048718/buddyfinder/latest_nkhng8.jpg", location: "7 Shepherdess Pl, London N1 7LJ", birth_date: Date.new(1953, 11, 8))
profile_n = Profile.create!(user: user_n, first_name: "Cersei", last_name: "Lannister", bio: "Im kind, honest, caring, compassionate, loyal and sweet. Wouldnt hurt a fly! Would be nice to meet i nice guy who wasn't my brother, for once.", interests: "Total domination, murder, stabbing people in the back, my brother!", picture: "https://res.cloudinary.com/dwfl1xhao/image/upload/v1630049123/buddyfinder/cersei-euron-gift-1500579238.png_xmtnqh.png", location: "37-69 Dame St, London", birth_date: Date.new(1976, 9, 18))
profile_o = Profile.create!(user: user_o, first_name: "Elizabeth", last_name: "Windsor", bio: "Hello all, Lizzy here. Down to have a jolly good time, walk my doggies, maybe get a lil' tipsyyyyy. Cheerio!", interests: "Tea, crumpets, being polite, waving weirdly!", picture: "https://res.cloudinary.com/dwfl1xhao/image/upload/v1630049309/buddyfinder/queen-elizabeth-ii-2_mv4gvg.jpg", location: "London N1 5EJ", birth_date: Date.new(1938, 9, 18))
profile_p = Profile.create!(user: user_p, first_name: "Elon", last_name: "Musk", bio: "I'm Elon. You'll find me wither building rockets or smoking weed with Joe Rogan.", interests: "Rockets, weed, self driving cars, socially awkward interactions.", picture: "https://res.cloudinary.com/dwfl1xhao/image/upload/v1630059458/buddyfinder/1229892934.0_dc3evb.webp", location: "23 Bridport Pl, London N1 5DX", birth_date: Date.new(1972, 3, 22))
# profile_nat = Profile.create!(user: user_nat, first_name: "Natasha", last_name: "Goring", bio: "Wonder Woman 1984", interests: "Wonder Woman, Soviet Union, Cold War", picture: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", location: "102 Crondall Ct, London N1 6JJ")


puts "create booking 1"
start_date_1 = Date.new(2021, 2, 5)
end_date_1 = Date.new(2021, 2, 6)
booking_a = Booking.create(user: user_a, profile: profile_c, event_name: "Here Comes Treble Concert", event_location: "London 02 Arena", start_date: start_date_1, end_date: end_date_1)
puts "Booking 1 created!"

puts "create booking 2"
start_date_2 = Date.new(2021, 5, 10)
end_date_2 = Date.new(2021, 5, 11)
booking_b = Booking.create(user: user_i, profile: profile_a, event_name: "Meeting at the GQ", event_location: "Can't say it here", start_date: start_date_2, end_date: end_date_2)
puts "Booking 2 created!"

puts "create booking 3"
start_date_3 = Date.new(2021, 8, 20)
end_date_3 = Date.new(2021, 8, 21)
booking_c = Booking.create(user: user_d, profile: profile_d, event_name: "Acapella signing competition", event_location: "London Theather", start_date: start_date_3, end_date: end_date_3)
puts "Booking 3 created!"

puts "create booking 4"
start_date_4 = Date.new(2021, 8, 21)
end_date_4 = Date.new(2021, 8, 22)
booking_d = Booking.create(user: user_h, profile: profile_a, event_name: "Meth & Coke mixing", event_location: "Albuquerque", start_date: start_date_4, end_date: end_date_4)
puts "Booking 4 created!"

puts "create booking 5"
start_date_5 = Date.new(2021, 8, 23)
end_date_5 = Date.new(2021, 8, 24)
booking_e = Booking.create(user: user_h, profile: profile_a, event_name: "Chemistry for begginers", event_location: "New Mexico", start_date: start_date_5, end_date: end_date_5)
puts "Booking 5 created!"

puts "Everything created!"
