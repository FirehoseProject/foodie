require 'rubygems'
require 'faker'

10000.times do |restaurant_id|
  ratings = rand(40) - 20
  next if ratings < 0
  ratings.times do 
    puts "INSERT INTO ratings (restaurant_id, stars, user_id) VALUES ('#{restaurant_id}', #{rand(5) + 1}, #{rand(10000) + 1});"
  end
end
