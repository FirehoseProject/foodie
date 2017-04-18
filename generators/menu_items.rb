require 'rubygems'
require 'faker'

10000.times do |restaurant_id|
	rand(20).times do
		puts "INSERT INTO menu_items (name, description, cost, restaurant_id) VALUES ('#{Faker::Food.ingredient}', '#{Faker::Lorem.words(100).join(' ')}', #{rand(10000)* 0.0015}, #{restaurant_id});"
	end
end