require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new(first_name: "Bobby", last_name: "Vidal")
customer2 = Customer.new(first_name: "Jack", last_name: "Rotta")
customer3 = Customer.new(first_name: "Jack", last_name: "Rotta")
customer4 = Customer.new(first_name: "Wal", last_name: "Mart")


restaurant1 = Restaurant.new(name: "Flatiron Grill")
restaurant2 = Restaurant.new(name: "WeWork Wok")
restaurant3 = Restaurant.new(name: "Flatiron Grill")
restaurant4 = Restaurant.new(name: "Borgs Burgers")

review1 = Review.new(customer: customer1, restaurant: restaurant1, rating: 7, content: "WOOOOOOOOOOOOOW")
review2 = Review.new(customer: customer2, restaurant: restaurant2, rating: 0, content: "POOOOOOOOOOOOP")
review3 = Review.new(customer: customer4, restaurant: restaurant4, rating: 3, content: "STELLAR")
review4 = Review.new(customer: customer1, restaurant: restaurant2, rating: 2, content: "BLEH")














binding.pry
0 #leave this here to ensure binding.pry isn't the last line