require_relative '../setup'

puts "Exercise 1"
puts "----------"

# class Store < ActiveRecord::Base
store1 = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true )
store1.save
store2 = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true )
store2.save
store3 = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)
store3.save
puts "there are #{Store.count} stores in DB"
# end


# Your code goes below here ...
