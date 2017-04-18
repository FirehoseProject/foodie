require 'rubygems'
require 'faker'

100000.times do |n|
  puts "INSERT INTO users (email) VALUES ('#{Faker::Internet.email}');"
end
