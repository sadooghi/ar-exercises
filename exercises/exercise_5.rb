require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@store_annual_revenue = Store.sum(:annual_revenue)
@average_annual_revenue = @store_annual_revenue / Store.count
