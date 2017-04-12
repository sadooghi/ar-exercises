require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Please inter a store name"
store_name = gets.chomp

store7 = Store.create(name: store_name)
store7.save
store7.errors.messages.each do |err|
  puts err
end
