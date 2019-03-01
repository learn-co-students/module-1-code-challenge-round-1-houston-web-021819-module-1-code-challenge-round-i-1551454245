require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

mark = Customer.new("Mark", "Pothecary")
jon = Customer.new("Jon", "Hawkins")
jw = Customer.new("Jon", "Woodwark")
jonny = Customer.new("Jonny", "Carruthers")

bluedragon = Restaurant.new("Blue Dragon")
perrys = Restaurant.new("Perrys")
killens = Restaurant.new("Killens")

review1 = Review.new(mark, bluedragon, 4, "yummy chinese")
review2 = Review.new(jon, perrys, 1, "mediocre steak, terible atmosphere")
review3 = Review.new(jw, killens, 5, "perfect bbq")
review4 = Review.new(jw, perrys, 1, "too loud")
review5 = Review.new(jon, killens, 5, "better than Rudys")
review6 = Review.new(mark, killens, 4, "I love this BBQ!")
review7 = Review.new(jon, bluedragon, 3, "my go-to chinese place")
review8 = Review.new(jonny, bluedragon, 2, "perfect for a friday take-out")
review9 = Review.new(jonny, perrys, 1, "over-cooked")
review10 = Review.new(jon, killens, 4, "smiley emoji")
review11 = Review.new(jonny, perrys, 2, "nice enough fries, mediocre steak for the price")
review12 = Review.new(mark, bluedragon, 3, "good enough, but I prefer Indian")




binding.pry
0 #leave this here to ensure binding.pry isn't the last line