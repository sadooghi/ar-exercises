require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@store_annual_revenue = Store.sum(:annual_revenue)
puts "total annual revenue is #{@store_annual_revenue}"
@average_annual_revenue = @store_annual_revenue / Store.count
puts "average annual revenue is #{@average_annual_revenue}"
@average_annual_revenue_more_than_1M_rev = Store.where("annual_revenue >?", 1000000).sum(:annual_revenue)/Store.where("annual_revenue >?", 1000000).count
puts "average annual revenue for stores with annual revenue of more than 1 M is #{@average_annual_revenue_more_than_1M_rev}"