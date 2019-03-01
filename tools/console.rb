require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

eli = Customer.new("Eli", "Lauffenburger")
guy = Customer.new("Guy", "Fieri")
blizz = Customer.new("Cameron", "Blizzard")

barba = Restaurant.new("Cantina Barba")
tinys = Restaurant.new("Tiny Boxwooods")
tiger_den = Restaurant.new("Tiger Den")
afghan_village = Restaurant.new("The Afghan Village")
himalaya = Restaurant.new("Himalaya")

eli_barba = eli.add_review(restaurant: barba, content: "I get sad when I don't eat the tacos here for more than a week or so.", rating: 5)
eli_tiger_den = eli.add_review(restaurant: tiger_den, content: "Great ramen, but it's easier for me to go to ramen tatsuya without the wait.", rating: 4)
eli_afghan_village = eli.add_review(restaurant: afghan_village, content: "Get the kufta palau!! Great hospitality.", rating: 5)
blizz_tinys = blizz.add_review(restaurant: tinys, content: "I eat solo brunch here with the NYTs literally every saturday.", rating: 5)
guy_barba = guy.add_review(restaurant: barba, content: "The burgers here are incredible, despite it being a taco restaurant.  Two stars docked for misleading name of restaurant.", rating: 3)
blizz_himalaya = blizz.add_review(restaurant: himalaya, content: "Bourdain was right!", rating: 5)
guy_himalaya = guy.add_review(restaurant: himalaya, content: "It's hard to find anything wrong with the food, service was meh though.", rating: 4)
eli_himalaya = eli.add_review(restaurant: himalaya, content: "I've never had better indian food.", rating: 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line