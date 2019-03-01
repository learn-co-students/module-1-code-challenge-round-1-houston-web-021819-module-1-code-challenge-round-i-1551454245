require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer = Customer.new(first_name: "Name", last_name: "One")
customer2 = Customer.new(first_name: "Name", last_name: "Two")

restaurant = Restaurant.new(name: "Name")
restaurant2 = Restaurant.new(name: "Name2")

review = Review.new(rating: 1, content: "Review", customer: customer, restaurant: restaurant)
review2 = Review.new(rating: 2, content: "Review", customer: customer2, restaurant: restaurant2)
review3 = Review.new(rating: 3, content: "Review", customer: customer, restaurant: restaurant2)
review4 = Review.new(rating: 4, content: "Review", customer: customer2, restaurant: restaurant)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line