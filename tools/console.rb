require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new('a', 'b')
c2 = Customer.new('c', 'd')
c3 = Customer.new('a', 'e')
c1.full_name
Customer.all
Customer.find_by_name('c d') #should c2
Customer.find_all_by_first_name('a') #should [c1,c2]
Customer.all_names #should['a b','c d','a e']

r1 = Restaurant.new('r1')
r2 = Restaurant.new('r2')

review1 = Review.new(customer:'a b', restaurant:'r1', rating: 1, content: "Good")
review2 = Review.new(customer:'c d', restaurant:'r1', rating: 4, content: "Great great")

review3 = Review.new(customer:'c d', restaurant:'r2', rating: 3, content: "Just fine")
review4 =c1.add_review("r2", 'bad', 1) #given a restaurant object, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
c1.num_reviews #should 2 DONE
c1.restaurants #should [r2] DONE
r2.customers #should ['a b', 'c d']
r1.reviews #should [review1, review2] DONE


r1.average_star_rating #should 2.5
r1.longest_review #should "Great Great"

binding.pry
0 #leave this here to ensure binding.pry isn't the last line