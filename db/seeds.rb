puts "🌱 Seeding users, Please wait..."

10.times do
    User.create(
        username: Faker::Name.username,
        password: "test123",
        email: Faker::Name.email
    )
end

puts "🌱 Done creating user, wait while we create movies..."

20.times do
    Movie.create(
        title: Faker::Name.username,
        genre: Faker::Movies.genre,
        rating: rand(1..10),
        user_id: rand(1..10)
    )
end


puts "🌱 Done seeding!"