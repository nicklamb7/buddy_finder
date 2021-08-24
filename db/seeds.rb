# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env.development?
  puts "Destroying users..."
  User.destroy_all
  puts "Destroying profiles..."
  Profile.destroy_all
  puts "Destroying bookings..."
  Booking.destroy_all
end

puts "create user"
user_a = User.create!(email: "nick@gmail.com", password: "hwhlaaqeor")
user_b = User.create!(email: "me@rlessard.com", password: "hidceghgwj")

puts "create profile"
profile_a = Profile.create!(user: user_a, first_name: "alex", last_name: "natalia", bio: "Wonder Woman 1984", interests: "Wonder, Woman, Soviet Union, Cold War", picture: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", location: "hoxton")
profile_b = Profile.create!(user: user_b, first_name: "john", last_name: "christina", bio: "The Shawshank Redemption", interests: "double murder, banker, new life, prison", picture: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", location: "london")

puts "create booking"
start_date = Date.new(2021, 2, 5)
end_date = Date.new(2021, 2, 6)
booking_a = Booking.create(user: user_a, profile: profile_a, event_name: "Titanic", event_location: "canada", start_date: start_date, end_date: end_date)
puts "Everything created!!!"
