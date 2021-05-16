require 'faker'

puts 'beginning seeding'

puts 'creating users'
10.times do
  User.create(username: Faker::Name.first_name, password: "123", profile_img: "../profile_placeholder.png", weight: rand(100..250) , height_feet: rand(5..7) , height_inches: rand(1..11), age: rand(18..99))
end


puts 'seeding done'