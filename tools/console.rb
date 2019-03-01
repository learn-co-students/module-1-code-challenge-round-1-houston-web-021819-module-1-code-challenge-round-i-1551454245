require 'pry'
require_relative '../config/environment.rb'


def reload
  load 'config/environment.rb'
end



cust1 = Customer.new("Steve", "Madden")
cust2 = Customer.new("John", "Cowherd")
cust3 = Customer.new("Jerry", "Townsend")
cust4 = Customer.new("Michael", "Kite")
cust5 = Customer.new("Greg", "Berhalter")

rest1 = Restaurant.new("Howdy's")
rest2 = Restaurant.new("Frank's")
rest3 = Restaurant.new("Kerry's Kitchen")

rev1 = Review.new(cust1, rest1, 10, "I loved it.")
rev2 = Review.new(cust2, rest2, 7, "It was ok.")
rev3 = Review.new(cust3, rest3, 2, "It was terrible.")
rev4 = Review.new(cust4, rest1, 9, "Service was great!")
rev5 = Review.new(cust5, rest2, 6, "I've had better.")






binding.pry
0 #leave this here to ensure binding.pry isn't the last line