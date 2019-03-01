require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#customers 
janet = Customer.new("Janet", "Pinkerton")
janet2 = Customer.new("Janet", "Rodgers")


# restaurants
olive_garden = Restaurant.new("Olive Garden")


# reviews
bad_review = Review.new(janet, olive_garden, "Crap", 1)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
