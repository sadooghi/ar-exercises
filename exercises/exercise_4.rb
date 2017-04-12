require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

store4 = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true )
store4.save
store5 = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false )
store5.save
store6 = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)
store6.save
@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |store|
  puts "#{store.name} store has annual revenue of #{store.annual_revenue}"
end
@women_stores = Store.where(womens_apparel: true).where("annual_revenue >?", 1000000)
@women_stores.each do |store|
  puts "#{store.name} store has annual revenue of #{store.annual_revenue}"
end

# store7 = Store.create(name: "a", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)
# store7.save
