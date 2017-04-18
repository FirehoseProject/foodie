require 'rubygems'
require 'faker'

10000.times do |n|
  puts "INSERT INTO restaurants (name, description, cost, vegetarian_friendly, user_id) VALUES ('#{Faker::Company.name.gsub("'", "''")}', '#{Faker::Company.catch_phrase.gsub("'", "''")}', #{rand(3) + 1}, #{rand(4) ==0}, #{rand(10000) + 1});"
end
