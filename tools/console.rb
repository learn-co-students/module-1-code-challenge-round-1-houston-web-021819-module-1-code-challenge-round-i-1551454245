require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


pfchang = Restaurant.new("PF Chang")
olivegarden = Restaurant.new("Olive Garden")
cheesecakef = Restaurant.new("The Cheese Cake Factory")

hema = Customer.new("Hemalatha", "Murugan")
moni = Customer.new("Mohanraj", "Ramalingam")

review1 = Review.new(hema, olivegarden, 3, "The taste is good. the quality is good. U can try")
review2 = Review.new(moni, olivegarden, 4, "Must try!")

review3 = Review.new(hema, pfchang, 4, "Awsome!")
review4 = Review.new(moni, pfchang, 5, "Excellent!")
review5 = Review.new(hema, cheesecakef, 4, "Good")

 moni.add_review(cheesecakef, "Too Good", 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line