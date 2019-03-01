require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new('Jane', 'Doe')
c2 = Customer.new('Emily', 'Jones')

r1 = Restaurant.new('Restaurant1')
r2 = Restaurant.new('Restaurant2')

review1 = Review.new(c1, r1, 5, 'Great food')
review2 = Review.new(c1, r2, 4, 'Good food')


binding.pry
0 #leave this here to ensure binding.pry isn't the last line