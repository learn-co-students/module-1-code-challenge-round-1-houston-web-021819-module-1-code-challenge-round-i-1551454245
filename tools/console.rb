require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("cust1", "Smith")
customer2 = Customer.new("cust2", "Miles")
customer3 = Customer.new("cust3", "Robert")
customer4 = Customer.new("cust4", "Sam")
customer5 = Customer.new("cust4", "Andy")

Customer.find_by_name("cust1 Smith")
Customer.find_all_by_first_name("cust4")
Customer.all_names

Res1 = Restaurant.new("Res1")
Res2 = Restaurant.new("Res2")
Res3 = Restaurant.new("Res3")
Res4 = Restaurant.new("Res4")
Res5 = Restaurant.new("Res4")

Restaurant.find_by_name("Res4")

review1 = Review.new(customer1, Res1, 5, "Awesome!")
review2 = Review.new(customer2, Res2, 1, "Terrible!")
review3 = Review.new(customer3, Res3, 3, "Meh")
review4 = Review.new(customer4, Res4, 4, "Good!")
#review5 = Review.new(customer1, Res1, 2, "Not so good")

review1.customer
review3.restaurant
review2.rating
review4.content

customer5.add_review(Res5, "Not bad!", 4)
customer5.add_review(Res3, "Just ok!", 3)
customer5.add_review(Res4, "Pretty good!", 3)
customer5.add_review(Res3, "Just ok!", 4)


customer5.num_reviews
customer5.restaurants

Res4.customers
Res4.reviews
Res3.average_star_rating

binding.pry
0 #leave this here to ensure binding.pry isn't the last line