puts "cleaning DB.."
Restaurant.destroy_all

puts "populating DB with restaurants..."

16.times do
  new_restaurant = Restaurant.create(name: Faker::Restaurant.name,
                                     address: Faker::Address.street_address,
                                     stars: rand(1..5),
                                     chef_name: ["Jiro", "Tim", "Atala"].sample)

  puts "#{new_restaurant.id} was sucessfully create!"
end

puts "done."
